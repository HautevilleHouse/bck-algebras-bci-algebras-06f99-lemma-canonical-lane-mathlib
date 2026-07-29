import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure BciAlgebra where
  carrier : Type u
  op : carrier → carrier → carrier
  zero : carrier
  axiom1 : ∀ x y z : carrier, op (op (op x y) (op x z)) (op z y) = zero
  axiom2 : ∀ x : carrier, op x zero = x
  axiom3 : ∀ x : carrier, op x x = zero
  axiom4 : ∀ x y : carrier, op x y = zero → op y x = zero → x = y

structure BciAlgebraEvidence (A : BciAlgebra) where
  axiom1Closed : A.axiom1
  axiom2Closed : A.axiom2
  axiom3Closed : A.axiom3
  axiom4Closed : A.axiom4

def BciAlgebraClosed (A : BciAlgebra) : Prop :=
  A.axiom1 ∧ A.axiom2 ∧ A.axiom3 ∧ A.axiom4

theorem bci_algebra_closed_from_evidence (A : BciAlgebra) (E : BciAlgebraEvidence A) : BciAlgebraClosed A := by
  exact And.intro E.axiom1Closed (And.intro E.axiom2Closed (And.intro E.axiom3Closed E.axiom4Closed))

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse