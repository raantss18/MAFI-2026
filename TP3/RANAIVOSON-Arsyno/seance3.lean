import Mathlib

open Polynomial

-- Lemme 1 : L'évaluation est un homomorphisme d'anneaux
example (P Q : Polynomial ℝ) (x : ℝ) :
    (P + Q).eval x = P.eval x + Q.eval x := by
  simp [eval_add]

-- Lemme 2 : Commutativité de l'addition dans ℝ[X]
example (P Q : Polynomial ℝ) : P + Q = Q + P := by
  ring

-- Lemme 3 : deg(P + Q) ≤ max(deg P, deg Q)
example (P Q : Polynomial ℝ) :
    (P + Q).natDegree ≤ max P.natDegree Q.natDegree :=
  natDegree_add_le P Q

-- Exercice Lean 4.1 : (X + 1)² = X² + 2X + 1
example : (X + 1 : Polynomial ℤ) ^ 2 = X ^ 2 + 2 * X + 1 := by
  ring

-- Exercice Lean 4.2 : X³ - 1 = (X - 1)(X² + X + 1)
example : (X ^ 3 - 1 : Polynomial ℤ) =
          (X - 1) * (X ^ 2 + X + 1) := by
  ring

-- Exercice Lean 4.3 (ouvert) : si P(a) = 0, alors (X - a) divise P
#check Polynomial.dvd_iff_isRoot
