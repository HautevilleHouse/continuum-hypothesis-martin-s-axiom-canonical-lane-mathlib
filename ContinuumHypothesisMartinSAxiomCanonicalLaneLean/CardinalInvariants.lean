import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ContinuumHypothesisState

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure CardinalInvariantsPackage where
  additivity : Cardinal
  dominatingNumber : Cardinal
  boundingNumber : Cardinal
  splittingNumber : Cardinal

structure CardinalInvariantsEvidence (I : CardinalInvariantsPackage) where
  additivityDefined : I.additivity ≤ Cardinal.continuum
  dominatingNumberDefined : I.dominatingNumber ≤ Cardinal.continuum
  boundingNumberDefined : I.boundingNumber ≤ Cardinal.continuum
  splittingNumberDefined : I.splittingNumber ≤ Cardinal.continuum

def CardinalInvariantsClosed (I : CardinalInvariantsPackage) : Prop :=
  I.additivity ≤ Cardinal.continuum ∧ I.dominatingNumber ≤ Cardinal.continuum ∧
  I.boundingNumber ≤ Cardinal.continuum ∧ I.splittingNumber ≤ Cardinal.continuum

theorem cardinal_invariants_closed_from_evidence (I : CardinalInvariantsPackage) (E : CardinalInvariantsEvidence I) : CardinalInvariantsClosed I :=
  And.intro E.additivityDefined (And.intro E.dominatingNumberDefined (And.intro E.boundingNumberDefined E.splittingNumberDefined))

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse