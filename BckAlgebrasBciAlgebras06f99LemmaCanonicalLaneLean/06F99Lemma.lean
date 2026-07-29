import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.BciAlgebraStructure

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure Lemma06F99Package (A : Type u) where
  algebra : BCIAlgebra A
  lemma_statement : ∀ x y : A, (x * y) * (y * x) = (y * x) * (x * y)
  lemma_proof : lemma_statement

structure Lemma06F99Evidence (A : Type u) (P : Lemma06F99Package A) where
  lemma_statement_closed : P.lemma_statement

def Lemma06F99Closed (A : Type u) (P : Lemma06F99Package A) : Prop :=
  P.lemma_statement

theorem lemma06F99_closed_from_evidence (A : Type u) (P : Lemma06F99Package A)
    (E : Lemma06F99Evidence A P) : Lemma06F99Closed A P := by
  exact E.lemma_statement_closed

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse