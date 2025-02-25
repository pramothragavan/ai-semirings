
# Function checking whether a pair of semigroups defines an ai-semiring:
#  I wonder if this enumeration result is known or can be easily obtained by GAP
# or another tool. It would be good to have an independent confirmation
# of the claim; also, it would be interesting to have the number up to
# isomorphism or anti-isomorphism. Just to be precise, by an ai-semiring
# I (and the authors) mean an algebra (S, +, *) whose operations + and *
# are associative and fulfill the distributive laws x*(y+z)=x*y+x*z and
# (y+z)*x=y*x+z*x, and besides that, + is commutative and fulfills the
# idempotency law x+x=x. We don't assume the existence of neutral nor
# absorbing elements for any of the two operations.

# A = the additive semigroup, M the multiplicative
IsAiSemiring := function(S, T)
  local A, G, R, M, x, y, z, ok, r;

  if Size(S) <> Size(T) then
    return false;
  elif not IsBand(S) and IsCommutative(S) then
    return false;
  fi;
  A := MultiplicationTable(S);

  G := Image(IsomorphismPermGroup(AutomorphismGroup(S)));
  R := RightTransversal(SymmetricGroup(4), G);

  for r in R do
    M := OnMultiplicationTable(MultiplicationTable(T), r);
    x := 0;
    ok := true;
    while x < 4 and ok do
      x := x + 1;
      y := 0;
      while y < 4 and ok do
        y := y + 1;
        z := 0;
        while z < 4 and ok do
          z := z + 1;
          if M[x, A[y, z]] <> A[M[x, y], M[x, z]] then
            ok := false;
          elif M[A[y, z], x] <> A[M[y, x], M[z, x]] then
            ok := false;
          fi;
        od;
      od;
    od;
    if ok then
      return true;
    fi;
  od;
  return false;
end;

IsMyRing := function(S, T)
  local A, G, R, M, x, y, z, ok, r;

  if Size(S) <> Size(T) then
    return false;
  elif not IsGroupAsSemigroup(S) and IsCommutative(S) then
    return false;
  fi;
  A := MultiplicationTable(S);

  G := Image(IsomorphismPermGroup(AutomorphismGroup(S)));
  R := RightTransversal(SymmetricGroup(4), G);

  for r in R do
    M := OnMultiplicationTable(MultiplicationTable(T), r);
    x := 0;
    ok := true;
    while x < 4 and ok do
      x := x + 1;
      y := 0;
      while y < 4 and ok do
        y := y + 1;
        z := 0;
        while z < 4 and ok do
          z := z + 1;
          if M[x, A[y, z]] <> A[M[x, y], M[x, z]] then
            ok := false;
          elif M[A[y, z], x] <> A[M[y, x], M[z, x]] then
            ok := false;
          fi;
        od;
      od;
    od;
    if ok then
      return true;
    fi;
  od;
  return false;
end;

AllAiSemirings := function()
  local allA, allM, result, A, M;

  allA := AllSmallSemigroups(4, IsBand, true, IsCommutative, true);
  allM := AllSmallSemigroups(4);
  result := [];
  for A in allA do
    Assert(0, IsSelfDualSemigroup(A));
    for M in allM do
      if IsAiSemiring(A, M) then
        Add(result, [A, M]);
      fi;
      # if not IsSelfDualSemigroup(M) then
      #   M := DualSemigroup(M);
      #   if IsAiSemiring(A, M) then
      #     Add(result, [A, M]);
      #   fi;
      # fi;
    od;
  od;
  return result;
end;

AllRingsWithOne := function()
  local allA, allM, result, A, M;

  allA := AllSmallSemigroups(4, IsGroupAsSemigroup, true, IsCommutative, true);
  allM := AllSmallSemigroups(4, IsMonoidAsSemigroup, true);
  result := [];
  for A in allA do
    Assert(0, IsSelfDualSemigroup(A));
    for M in allM do
      if IsMyRing(A, M) then
        Add(result, [A, M]);
      fi;
      if not IsSelfDualSemigroup(M) then
        M := DualSemigroup(M);
        if IsMyRing(A, M) then
          Add(result, [A, M]);
        fi;
      fi;
    od;
  od;
  return result;
end;

AllRings := function()
  local allA, allM, result, A, M;

  allA := AllSmallSemigroups(4, IsGroupAsSemigroup, true, IsCommutative, true);
  allM := AllSmallSemigroups(4);
  result := [];
  for A in allA do
    Assert(0, IsSelfDualSemigroup(A));
    for M in allM do
      if IsMyRing(A, M) then
        Add(result, [A, M]);
      fi;
      if not IsSelfDualSemigroup(M) then
        M := DualSemigroup(M);
        if IsMyRing(A, M) then
          Add(result, [A, M]);
        fi;
      fi;
    od;
  od;
  return result;
end;
