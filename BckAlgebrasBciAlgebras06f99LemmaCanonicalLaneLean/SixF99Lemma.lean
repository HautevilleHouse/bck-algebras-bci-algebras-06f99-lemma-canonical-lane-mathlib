import BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean.IdealTheory

namespace HautevilleHouse
namespace BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean

structure SixF99AdmittedObject where
  bckAlgebra : BCKAlgebraPackage
  idealTheory : IdealTheoryPackage
  lemmaStatement : Prop
  lemmaProof : lemmaStatement

structure SixF99WitnessClosed (O : SixF99AdmittedObject) : Prop :=
  lemmaProved : O.lemmaStatement

theorem six_f99_witness_closed_from_object (O : SixF99AdmittedObject) :
    SixF99WitnessClosed O := by
  exact { lemmaProved := O.lemmaProof }

end BCKAlgebrasBCIAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse