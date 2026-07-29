import BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean.BCIAlgebra

namespace HautevilleHouse
namespace BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean

structure ImplicationAlgebraPackage where
  carrier : Type u
  one : carrier
  implication : carrier → carrier → carrier
  axioms : Prop
  bciEmbedding : BCIAlgebraPackage

structure ImplicationAlgebraEvidence (I : ImplicationAlgebraPackage) where
  axiomsClosed : I.axioms
  bciClosed : BCIAlgebraClosed I.bciEmbedding

def ImplicationAlgebraClosed (I : ImplicationAlgebraPackage) : Prop :=
  I.axioms ∧ BCIAlgebraClosed I.bciEmbedding

theorem implication_algebra_closed_from_evidence (I : ImplicationAlgebraPackage) (E : ImplicationAlgebraEvidence I) :
    ImplicationAlgebraClosed I := by
  exact And.intro E.axiomsClosed E.bciClosed

end BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse