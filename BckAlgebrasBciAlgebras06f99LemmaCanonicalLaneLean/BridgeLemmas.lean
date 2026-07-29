import canonicalLaneMathlib.AdmissibleClass
import BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.SixF99LemmaPackage

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SixF99LemmaClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Proof uses the evidence embedded in the admissible object
  exact A.object.evidence.sixF99LemmaClosed

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse
