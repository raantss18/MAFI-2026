import Mathlib.RingTheory.Polynomial.Basic
import Mathlib.Data.Polynomial.Degree.Definitions
import Mathlib.Data.Polynomial.Eval

open Polynomial

def mon_poly : Polynomial ℝ := C 3 + C 2 * X + X^2

#eval mon_poly.eval 4s

#check mon_poly
