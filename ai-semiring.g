LoadPackage("semigroups");
LoadPackage("smallsemi");

# A = the additive semigroup, M the multiplicative
IsLeftRightDistributive := function(A, M)
  local n, x, y, z;

  if Size(A) <> Size(M) then
    return false;
  fi;

  n  := Size(A);
  x  := 0;

  while x < n do
    x := x + 1;
    y := 0;
    while y < n do
      y := y + 1;
      z := y;
      while z < n do
        z := z + 1;
        if M[x, A[y, z]] <> A[M[x, y], M[x, z]] then
          return false;
        elif M[A[y, z], x] <> A[M[y, x], M[z, x]] then
          return false;
        fi;
      od;
    od;
  od;
  return true;
end;

IsomorphismFilter := function(S1, S2)
  local M1, M2, sigma, G;

  M1 := S1[2];
  M2 := S2[2];
  if S1[1] <> S2[1] then
    return false;
  fi;

  G  := S1[3];
  for sigma in G do
    if OnMultiplicationTable(M1, sigma) = M2 then
      return true;
    fi;
  od;
  return false;
end;

EquivalenceFilter := function(S1, S2)
  local M1, T1;

  if IsomorphismFilter(S1, S2) then
    return true;
  fi;
  M1 := S1[2];
  T1 := TransposedMat(M1);
  if T1 <> M1 then
    S1[2] := T1;
    return IsomorphismFilter(S1, S2);
  fi;
  return false;
end;

# reduce whole orbit to one representative
CanonicalTwist := function(M, autA)
  local sigma, min, temp;
  min := M;
  for sigma in autA do
    temp := OnMultiplicationTable(M, sigma);
    if temp < min then
      min := temp;
    fi;
  od;

  return min;
end;


# Function to enumerate ai-semirings using double cosets
Finder := function(allA, allM, autMs, shift)
  local A, AA, autA, list, M, autM, reps, sigma, M_sigma, j, i,
  temp, doubleCosetCache, value, count, gens, output, f;
  FLOAT.DIG         := 2;
  FLOAT.VIEW_DIG    := 4;
  FLOAT.DECIMAL_DIG := 4;
  output := "";
  f := IO_CompressedFile("/home/azureuser/ai-semirings.log", "w");
  InstallAtExit(function()  IO_WriteLine(f, output); IO_Close(f); end);


  count := 0;
  i     := 0;
  
  for A in allA do
    AA   := MultiplicationTable(A);
    autA := AutomorphismGroup(A);
    autA := Image(IsomorphismPermGroup(autA));

    j                := 0;
    doubleCosetCache := NewDictionary(Group((1, 2)), true, IsGroup);

    for M in allM do
      output := Concatenation(output, String(TotalMemoryAllocated()), " on line 101\n");
      j    := j + 1;
      PrintFormatted("At {}%, found {} so far\c\r",
                Float((i * Length(allM) + j) * 100 /
                (Length(allA) * Length(allM))),
                count);
      M     := MultiplicationTable(M);

      output := Concatenation(output, String(TotalMemoryAllocated()), " on line 109\n");

      if Size(doubleCosetCache) > 100000 then
        doubleCosetCache := NewDictionary(Group((1, 2)), true, IsGroup);
      fi;

      if j <= Length(autMs) then
        gens  := autMs[j];
      else
        gens  := autMs[j - shift];
      fi;

      output := Concatenation(output, String(TotalMemoryAllocated()), " on line 121\n");
      autM  := GroupByGenerators(gens);
      output := Concatenation(output, String(TotalMemoryAllocated()), " on line 123\n");
      value := LookupDictionary(doubleCosetCache, gens);

      if value <> fail then
        reps := value;
      else
        # Compute double coset reps: Aut(A)\S_n/Aut(M)
        output := Concatenation(output, String(TotalMemoryAllocated()), " on line 130\n");
        reps  := DoubleCosetRepsAndSizes(SymmetricGroup(Size(A)), autM, autA);
        output := Concatenation(output, String(TotalMemoryAllocated()), "on line 132\n");
        reps  := List(reps, x -> x[1]);
        output := Concatenation(output, String(TotalMemoryAllocated()), " on line 134\n");
        AddDictionary(doubleCosetCache, Generators(autM), reps);
      fi;

      output := Concatenation(output, String(TotalMemoryAllocated()), " on line 143\n");
      for sigma in reps do
        M_sigma := OnMultiplicationTable(M, sigma);
        if IsLeftRightDistributive(AA, M_sigma) then
          count := count + 1;
        fi;
      od;
      output := Concatenation(output, String(TotalMemoryAllocated()), " on line 150\n");

      # if j is mod 1000, print the current count
      if j mod 10000 = 0 then
        IO_WriteLine(f, output);
        output := "";
      fi;
    od;
    i    := i + 1;
  od;
      PrintFormatted("\nFound {} candidates!\n", count);

  return count;
end;

AllAiSemirings := function(n)
  local allA, allM, NSD, anti, autMs, autM_NSD, SD, autM_SD, shift;
  allA := AllSmallSemigroups(n, IsBand, true, IsCommutative, true);
  PrintFormatted("Found {} candidates for A!\n", Length(allA));

  Print("Finding non-self-dual semigroups...\n");
  NSD      := AllSmallSemigroups(n, IsSelfDualSemigroup, false);
  shift    := Length(NSD);

  Print("Finding corresponding dual semigroups...\n");
  anti   := List(NSD, DualSemigroup);

  Print("Finding automorphism groups...\n");
  autM_NSD := List(NSD,
                   x -> Generators(Image(IsomorphismPermGroup(AutomorphismGroup(x)))));

  Print("Adding in self-dual semigroups...\n");
  SD   := AllSmallSemigroups(n, IsSelfDualSemigroup, true);
  allM := Concatenation(SD, NSD, anti);
  PrintFormatted("Added in anti-iso! Found {} candidates for M!\n",
                  Length(allM));

  Print("Finding automorphism groups for self-dual semigroups...\n");
  autM_SD := List(SD, x -> Generators(Image(IsomorphismPermGroup(AutomorphismGroup(x)))));
  autMs   := Concatenation(autM_SD, autM_NSD);

  Unbind(NSD);
  Unbind(anti);
  Unbind(SD);
  Unbind(autM_NSD);
  Unbind(autM_SD);

  Print(Length(Unique(autMs)), " automorphism groups found!\n");
  Print("Finding ai-semirings...\n");
  return Finder(allA, allM, autMs, shift);
end;

AllRingsWithOne := function(n)
  local allA, allM;

  allA := AllSmallSemigroups(n, IsGroupAsSemigroup, true, IsCommutative, true);
  allM := AllSmallSemigroups(n, IsMonoidAsSemigroup, true);
  allM := UpToIsomorphism(allM);
  return Finder(allA, allM);
end;

AllRings := function(n)
  local allA, allM;
  allA := AllSmallSemigroups(n, IsGroupAsSemigroup, true, IsCommutative, true);
  allM := AllSmallSemigroups(n);
  allM := UpToIsomorphism(allM);
  return Finder(allA, allM);
end;