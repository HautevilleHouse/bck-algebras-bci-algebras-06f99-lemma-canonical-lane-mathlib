import BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean.ImplicationAlgebra

namespace HautevilleHouse
namespace BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean

structure PosetStructurePackage where
  carrier : Type u
  le : carrier → carrier → Prop
  orderAxioms : Prop
  inducedFromImplication : ImplicationAlgebraPackage

structure PosetStructureEvidence (P : PosetStructurePackage) where
  orderAxiomsClosed : P.orderAxioms
  implicationClosed : ImplicationAlgebraClosed P.inducedFromImplication

def PosetStructureClosed (P : PosetStructurePackage) : Prop :=
  P.orderAxioms ∧ ImplicationAlgebraClosed P.inducedFromImplication

theorem poset_structure_closed_from_evidence (P : PosetStructurePackage) (E : PosetStructureEvidence P) :
    PosetStructureClosed P := by
  exact And.intro E.orderAxiomsClosed E.implicationClosed

end BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse