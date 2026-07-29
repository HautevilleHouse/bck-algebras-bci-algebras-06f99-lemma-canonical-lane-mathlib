import HautevilleHouse.BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.LatticeOrderedAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure FilterClosurePackage {P : BCKAlgebraPackage} {I : BCIAlgebraPackage P} {L : LatticeOrderedAlgebraPackage I} where
  filterSet : Set I.carrier
  closureProperty : Prop
  maximalFilter : Prop
  primeFilter : Prop

structure FilterClosureEvidence {P : BCKAlgebraPackage} {I : BCIAlgebraPackage P} {L : LatticeOrderedAlgebraPackage I} (F : FilterClosurePackage L) where
  closurePropertyClosed : F.closureProperty
  maximalFilterClosed : F.maximalFilter
  primeFilterClosed : F.primeFilter

def FilterClosureClosed {P : BCKAlgebraPackage} {I : BCIAlgebraPackage P} {L : LatticeOrderedAlgebraPackage I} (F : FilterClosurePackage L) : Prop :=
  F.closureProperty ∧ F.maximalFilter ∧ F.primeFilter ∧ LatticeOrderedAlgebraClosed L

theorem filter_closure_closed_from_evidence {P : BCKAlgebraPackage} {I : BCIAlgebraPackage P} {L : LatticeOrderedAlgebraPackage I} (F : FilterClosurePackage L) (E : FilterClosureEvidence F) : FilterClosureClosed F :=
  by
    refine And.intro E.closurePropertyClosed (And.intro E.maximalFilterClosed (And.intro E.primeFilterClosed ?_))
    exact LatticeOrderedAlgebraClosed.trivial

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse