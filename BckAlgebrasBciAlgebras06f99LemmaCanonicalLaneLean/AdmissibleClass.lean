import BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean.SixF99Lemma

namespace HautevilleHouse
namespace BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean

structure AdmissibleClass where
  object : SixF99AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SixF99WitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse