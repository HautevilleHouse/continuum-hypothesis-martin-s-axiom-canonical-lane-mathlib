import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ZFCSetTheory
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ForcingNotion
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.MartinAxiom
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ContinuumHypothesis

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ZFCClosed A.zfc

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    -- Assume A has ZFCEvidence
    sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCHMAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chma_endgame (A : AdmissibleClass) : ConstrainedCHMAClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse
