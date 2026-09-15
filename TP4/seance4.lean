import Mathlib.Data.List.Basic
import Mathlib.Data.Nat.Basic

-- La liste vide est sous-séquence de toute liste
example (xs : List Nat) : List.Sublist [] xs := by
  exact List.nil_sublist xs

-- Toute liste est sous-séquence d'elle-même
example (xs : List Nat) : List.Sublist xs xs := by
  exact List.Sublist.refl xs

-- Longueur d'une sous-séquence bornée par la liste originale
example (xs ys : List Nat) (h : List.Sublist xs ys) :
    xs.length ≤ ys.length := by
  exact List.Sublist.length_le h

-- Exercice : montrer que la concaténation avec une liste vide
-- donne la même liste
example (xs : List Nat) : xs ++ [] = xs := by
  exact List.append_nil xs
```
