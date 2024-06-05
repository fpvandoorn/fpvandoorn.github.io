import Mathlib.Data.Nat.Prime
import Mathlib.Algebra.BigOperators.Basic

open BigOperators Nat Finset
lemma Nat_succ_ne_succ {n m : Nat} (h : n ≠ m) : succ n ≠ succ m := Nat.succ_ne_succ.mpr h
alias prod_ne_zero := Finset.prod_ne_zero_iff
namespace Nat
infix:50 (priority := high) " is in " => Membership.mem
/-- `a is not in b` is negated elementhood. It is notation for `¬ (a ∈ b)`. -/
notation3:50 (priority := high) a:50 " is not in " b:50 => ¬ (a ∈ b)
@[inherit_doc] infixr:35 (priority := high) " and "   => And
@[inherit_doc] infix:50 (priority := high) " divides " => Dvd.dvd
@[inherit_doc] postfix:50 (priority := high) " is prime" => Prime
@[inherit_doc] prefix:50 (priority := high) "minimal factor of " => Nat.minFac
@[inherit_doc] prefix:50 (priority := high) "finite subset of " => Finset
section
open Lean
-- macro "for all " x:binderIdent " in " t:term ", " p:term : term =>
--   `(∀ $x, $x ∈ t → $p)
syntax "for all " binderIdent " in " term ", " term : term
macro_rules
  | `(for all $x:ident in $t:term, $p) => `(∀ $x:ident, $x ∈ $t → $p)
end

set_option pp.fieldNotation false















theorem Euclid
  (P : finite subset of ℕ)
  (hP : for all p in P, p is prime) :
  exists p,
  p is prime and p is not in P := by
  let M := ∏ p in P, p
  let N := M + 1
  let p := minimal factor of N
  have h : p divides N := by exact minFac_dvd N
  have : p is prime := by
    refine minFac_prime ?n1
    refine Nat_succ_ne_succ ?n1.h
    refine Iff.mpr prod_ne_zero ?n1.h.a
    exact fun a a_1 => Prime.ne_zero (hP a a_1)
  have : p is not in P := by
    intro (hp : p is in P)
    have : p divides M := by apply?
    have : p divides 1 := by exact Iff.mpr (Nat.dvd_add_iff_right this) h
    have : p = 1 := by exact eq_one_of_dvd_one this
    have : p ≠ 1 := by exact Prime.ne_one (hP p hp)
    contradiction
  use p
