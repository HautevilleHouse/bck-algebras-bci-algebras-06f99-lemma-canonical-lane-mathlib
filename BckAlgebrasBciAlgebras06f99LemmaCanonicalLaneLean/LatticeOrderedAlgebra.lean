import HautevilleHouse.BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.BCIAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure LatticeOrderedAlgebraPackage {P : BCKAlgebraPackage} (I : BCIAlgebraPackage P) where
  latticeStructure : Type v
  meet : I.carrier → I.carrier → I.carrier
  join : I.carrier → I.carrier → I.carrier
  latticeAxioms : Prop
  compatibilityWithOperation : Prop
  distributivity : Prop

structure LatticeOrderedAlgebraEvidence {P : BCKAlgebraPackage} {I : BCIAlgebraPackage P} (L : LatticeOrderedAlgebraPackage I) where
  latticeAxiomsClosed : L.latticeAxioms
  compatibilityWithOperationClosed : L.compatibilityWithOperation
  distributivityClosed : L.distributivity

def LatticeOrderedAlgebraClosed {P : BCKAlgebraPackage} {I : BCIAlgebraPackage P} (L : LatticeOrderedAlgebraPackage I) : Prop :=
  L.latticeAxioms ∧ L.compatibilityWithOperation ∧ L.distributivity ∧ BCIAlgebraClosed I

theorem lattice_ordered_algebra_closed_from_evidence {P : BCKAlgebraPackage} {I : BCIAlgebraPackage P} (L : LatticeOrderedAlgebraPackage I) (E : LatticeOrderedAlgebraEvidence L) : LatticeOrderedAlgebraClosed L :=
  by
    refine And.intro E.latticeAxiomsClosed (And.intro E.compatibilityWithOperationClosed (And.intro E.distributivityClosed ?_))
    exact bci_algebra_closed_from_evidence I (bci_algebra_closed_of_package I)

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse