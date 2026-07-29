import HautevilleHouse.BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean

structure BckBciTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  bckBciConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

open HautevilleHouse.CanonicalLaneMathlibCore

def sourceBckBciTheoremStatement : BckBciTheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := "BckBciAlgebras06F99Lemma",
  theoremObject := "06F99 Lemma for BCK/BCI algebras",
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  bckBciConstrainedStatement := "Constrained BCK/BCI algebra theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end BckAlgebrasBciAlgebras06f99LemmaCanonicalLaneLean
end HautevilleHouse
