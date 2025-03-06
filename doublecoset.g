
LoadPackage("semigroups");
LoadPackage("smallsemi");

# A = the additive semigroup, M the multiplicative
IsLeftRightDistributive := function(S, T)
  local n, A, M, x, ok, y, z;

  if Size(S) <> Size(T) then
    return false;
  fi;

  n  := Size(S);
  if IsSemigroup(S) then
    A  := MultiplicationTable(S);
  else
    A := S;
  fi;
  if IsSemigroup(T) then
    M  := MultiplicationTable(T);
  else
    M := T;
  fi;

  x  := 0;
  ok := true;

  while x < n and ok do
    x := x + 1;
    y := 0;
    while y < n and ok do
      y := y + 1;
      z := 0;
      while z < n and ok do
        z := z + 1;
        if M[x, A[y, z]] <> A[M[x, y], M[x, z]] then
          ok := false;
        elif M[A[y, z], x] <> A[M[y, x], M[z, x]] then
          ok := false;
        fi;
      od;
    od;
  od;
  return ok;
end;

PrecomputeAutM := function(allM)
  local autMs, M;
  autMs := [];
  for M in allM do
    Add(autMs, Image(IsomorphismPermGroup(AutomorphismGroup(M))));
  od;
  return autMs;
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
  autMs, temp, canon, canonicalList;
  FLOAT.DIG         := 2;
  FLOAT.VIEW_DIG    := 4;
  FLOAT.DECIMAL_DIG := 4;

  list  := [];
  i     := 0;
  autMs := PrecomputeAutM(allM);

  for A in allA do
    AA   := MultiplicationTable(A);
    autA := AutomorphismGroup(A);
    autA := Image(IsomorphismPermGroup(autA));

    j             := 0;
    temp          := [];
    canonicalList := HashSet([]);

    for M in allM do
      j    := j + 1;
      PrintFormatted("At {}%, found {} so far\c\r",
                Float((i * Length(allM) + j) * 100 /
                (Length(allA) * Length(allM))),
                Length(list) + Length(temp));
      autM := autMs[j];
      M    := MultiplicationTable(M);

      # Compute double coset reps: Aut(A)\S_n/Aut(M)
      reps  := DoubleCosetRepsAndSizes(SymmetricGroup(Size(A)), autM, autA);

      for sigma in reps do
        M_sigma := OnMultiplicationTable(M, sigma[1]);
        if IsLeftRightDistributive(AA, M_sigma) then
          canon := CanonicalTwist(M_sigma, autA);
          if (canon in canonicalList) = false then
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
  local allA, allM;
  allA := AllSmallSemigroups(n, IsBand, true, IsCommutative, true);
  allM := AllSmallSemigroups(n);
  allM := UpToIsomorphism(allM);
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