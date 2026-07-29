import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.SetTheoreticAdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ForcingExtensions
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.MartinAxiom
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ContinuumHypothesis
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.IteratedForcing

/-!
# Final Theorem: Constrained CH/MA Closure
-/

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCHMAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cha_endgame (A : AdmissibleClass) : ConstrainedCHMAClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse