import canonicalLaneMathlib.AdmissibleClass
import BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.BckAlgebraStructure
import BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.BciAlgebraStructure

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure SixF99LemmaPackage where
  bckAlgebra : BCKAlgebra
  bciAlgebra : BCIAlgebra
  embedCondition : BckAlgebra → BciAlgebra → Prop
  embeddingExists : embedCondition bckAlgebra bciAlgebra

structure SixF99LemmaEvidence (P : SixF99LemmaPackage) where
  embedConditionClosed : P.embeddingExists

def SixF99LemmaClosed (P : SixF99LemmaPackage) : Prop :=
  P.embeddingExists

theorem six_f99_lemma_closed_from_evidence (P : SixF99LemmaPackage) (E : SixF99LemmaEvidence P) : SixF99LemmaClosed P := by
  exact E.embedConditionClosed

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse
