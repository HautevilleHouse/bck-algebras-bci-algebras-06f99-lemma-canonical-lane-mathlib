import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure BckAlgebra where
  carrier : Type u
  mul : carrier → carrier → carrier
  star : carrier → carrier
  unit : carrier
  bcAxioms : Prop

structure BciAlgebra where
  carrier : Type u
  mul : carrier → carrier → carrier
  star : carrier → carrier
  unit : carrier
  bciAxioms : Prop

structure BckAdmittedObject where
  bckAlgebra : BckAlgebra
  lemmaStatement : Prop
  conclusion : lemmaStatement

def BckWitnessClosed (O : BckAdmittedObject) : Prop :=
  O.lemmaStatement

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse