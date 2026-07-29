import BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean.PosetStructure

namespace HautevilleHouse
namespace BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean

structure IdealTheoryPackage where
  carrier : Type u
  ideal : Set carrier
  idealAxioms : Prop
  posetStructure : PosetStructurePackage

structure IdealTheoryEvidence (I : IdealTheoryPackage) where
  idealAxiomsClosed : I.idealAxioms
  posetClosed : PosetStructureClosed I.posetStructure

def IdealTheoryClosed (I : IdealTheoryPackage) : Prop :=
  I.idealAxioms ∧ PosetStructureClosed I.posetStructure

theorem ideal_theory_closed_from_evidence (I : IdealTheoryPackage) (E : IdealTheoryEvidence I) :
    IdealTheoryClosed I := by
  exact And.intro E.idealAxiomsClosed E.posetClosed

end BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse