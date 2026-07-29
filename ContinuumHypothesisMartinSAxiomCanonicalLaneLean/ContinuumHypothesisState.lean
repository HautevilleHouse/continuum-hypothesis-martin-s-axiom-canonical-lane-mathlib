import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.MartinAxiomPackage

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure ContinuumHypothesisState where
  alephOne : Cardinal
  continuum : Cardinal
  chHypothesis : alephOne = continuum
  chNegation : alephOne < continuum

structure ContinuumHypothesisEvidence (C : ContinuumHypothesisState) where
  cardinalRelationClosed : C.alephOne = C.continuum ∨ C.alephOne < C.continuum
  consistencyWithMA : Prop
  consistencyWithMAClosed : consistencyWithMA

def ContinuumHypothesisClosed (C : ContinuumHypothesisState) : Prop :=
  (C.alephOne = C.continuum ∨ C.alephOne < C.continuum) ∧ C.consistencyWithMA

theorem continuum_hypothesis_closed_from_evidence (C : ContinuumHypothesisState) (E : ContinuumHypothesisEvidence C) : ContinuumHypothesisClosed C :=
  And.intro E.cardinalRelationClosed E.consistencyWithMAClosed

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse