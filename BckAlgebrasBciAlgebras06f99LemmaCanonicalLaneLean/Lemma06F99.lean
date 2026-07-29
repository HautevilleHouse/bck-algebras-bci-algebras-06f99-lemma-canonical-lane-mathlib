import BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.BCKAlgebraStructure
import BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.BCIAlgebraStructure

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure Lemma06F99Package (BCK : BCKAlgebraPackage) (BCI : BCIAlgebraPackage) where
  implicationRelation : Prop
  equivalenceProof : Prop
  bridgeEvidence : implicationRelation ∧ equivalenceProof

structure Lemma06F99Evidence {BCK : BCKAlgebraPackage} {BCI : BCIAlgebraPackage}
    (L : Lemma06F99Package BCK BCI) where
  implicationClosed : L.implicationRelation
  equivalenceClosed : L.equivalenceProof

def Lemma06F99Closed {BCK : BCKAlgebraPackage} {BCI : BCIAlgebraPackage}
    (L : Lemma06F99Package BCK BCI) : Prop :=
  L.implicationRelation ∧ L.equivalenceProof

theorem lemma06f99_closed_from_evidence {BCK : BCKAlgebraPackage} {BCI : BCIAlgebraPackage}
    (L : Lemma06F99Package BCK BCI) (E : Lemma06F99Evidence L) : Lemma06F99Closed L := by
  exact And.intro E.implicationClosed E.equivalenceClosed

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse