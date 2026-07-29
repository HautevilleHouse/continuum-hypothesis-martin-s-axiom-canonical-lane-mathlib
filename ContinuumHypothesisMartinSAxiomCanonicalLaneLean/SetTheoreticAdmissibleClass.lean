import canonicalLaneMathlib.AdmissibleClass

/-!
# Set-Theoretic Admissible Class for Continuum Hypothesis / Martin's Axiom

This module defines the admissible class structure for CH/MA objects.
-/

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure ContinuumHypothesisAdmittedObject where
  forcingModel : Type
  poset : Type
  properties : Prop
  conclusion : properties

structure AdmissibleClass where
  object : ContinuumHypothesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (ContinuumHypothesisWitnessClosed A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse