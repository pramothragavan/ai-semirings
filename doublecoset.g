
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
Finder := function(allA, allM)
  local A, AA, autA, list, M, autM, reps, sigma, M_sigma, j, i,
  autMs, temp, canon, canonicalList, doubleCosetCache, value;
  FLOAT.DIG         := 2;
  FLOAT.VIEW_DIG    := 4;
  FLOAT.DECIMAL_DIG := 4;

  list  := [];
  i     := 0;
  Print("Computing automorphism groups...\n");
  autMs := List(allM, x -> Image(IsomorphismPermGroup(AutomorphismGroup(x))));
  Print("AutMs done!\n");

  for A in allA do
    AA   := MultiplicationTable(A);
    autA := AutomorphismGroup(A);
    autA := Image(IsomorphismPermGroup(autA));

    j                := 0;
    temp             := [];
    canonicalList    := HashSet([]);
    doubleCosetCache := NewDictionary(Group((1, 2)), true, IsGroup);

    for M in allM do
      j    := j + 1;
      PrintFormatted("At {}%, found {} so far\c\r",
                Float((i * Length(allM) + j) * 100 /
                (Length(allA) * Length(allM))),
                Length(list) + Length(temp));
      autM := autMs[j];
      M    := MultiplicationTable(M);

      value := LookupDictionary(doubleCosetCache, autM);
      if value <> fail then
        reps := value;
      else
        # Compute double coset reps: Aut(A)\S_n/Aut(M)
        reps  := DoubleCosetRepsAndSizes(SymmetricGroup(Size(A)), autM, autA);
        reps  := List(reps, x -> x[1]);
        AddDictionary(doubleCosetCache, autM, reps);
      fi;

      for sigma in reps do
        M_sigma := OnMultiplicationTable(M, sigma);
        if IsLeftRightDistributive(AA, M_sigma) then
          canon := CanonicalTwist(M_sigma, autA);
          if not (canon in canonicalList) then
            AddSet(canonicalList, canon);
            AddSet(temp, M_sigma);
          fi;
        fi;
      od;
    od;
    i    := i + 1;
    temp := List(temp, x -> [AA, x, autA]);
    UniteSet(list, temp);
  od;
    PrintFormatted("\nFound {} candidates!\n", Length(list));
  return list;
end;

AllAiSemirings := function(n)
  local allA, allM, anti;
  allA := AllSmallSemigroups(n, IsBand, true, IsCommutative, true);
  PrintFormatted("Found {} candidates for A!\n", Length(allA));
  allM := AllSmallSemigroups(n, IsSelfDualSemigroup, false);
  Print("Computing dual semigroups...\n");
  anti := List(allM, DualSemigroup);
  Print("Adding in self-dual semigroups...\n");
  allM := Concatenation(AllSmallSemigroups(n, IsSelfDualSemigroup, true),
                        allM, anti);
  PrintFormatted("Added in anti-iso! Found {} candidates for M!\n",
                  Length(allM));
  return Finder(allA, allM);
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