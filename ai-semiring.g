
# Function checking whether a pair of semigroups defines an ai-semiring:

LoadPackage("smallsemi");
LoadPackage("semigroups");

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

Finder := function(allA, allM)
  local list, G, R, AA, H, T, p, MM, result, ok, A, M, t, r, i, j;
  FLOAT.DIG         := 2;
  FLOAT.VIEW_DIG    := 4;
  FLOAT.DECIMAL_DIG := 4;

  list  := [];
  i     := 0;
  # Do a first pass that over counts
  for A in allA do
    G  := Image(IsomorphismPermGroup(AutomorphismGroup(A)));
    R  := RightTransversal(SymmetricGroup(Size(A)), G);
    AA := MultiplicationTable(A);
    Assert(0, IsSelfDualSemigroup(A));
    j := 0;
    for M in allM do
      j := j + 1;
      PrintFormatted("At {}%, found {} so far\n",
                     Float((i * Length(allM) + j) * 100 /
                     (Length(allA) * Length(allM))),
                     Length(list));
      H := Intersection(G, Image(IsomorphismPermGroup(AutomorphismGroup(M))));
      T := RightTransversal(G, H);
      for t in T do
        for r in R do
          p  := t * r;
          MM := OnMultiplicationTable(MultiplicationTable(M), p);
          if IsLeftRightDistributive(AA, MM) then
            AddSet(list, [AA, MM, G]);
          fi;
        od;
      od;
    od;
    i := i + 1;
  od;
  PrintFormatted("\nFound {} candidates!\n", Length(list));

  result := [];

  Print("Filtering up to isomorphism or equivalence!\n");
  # Filter up to isomorphism
  for i in [1 .. Length(list) - 1] do
    PrintFormatted("At {} of {}\c\r", i, Length(list));
    ok := true;
    for j in [i + 1 .. Length(list)] do
      if IsomorphismFilter(list[i], list[j]) then
        ok := false;
        break;
        # TODO check equivalence
      fi;
    od;
    if ok then
      Add(result, list[i]);
    fi;
  od;

  PrintFormatted("\n", i, Length(list) - 1);

  Add(result, list[Length(list)]);

  return result;
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
