import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ContinuumHypothesis

/-!
# Iterated Forcing Package
-/

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure IteratedForcingPackage where
  iterationLength : Type
  initialModel : Type
  iterationSequence : Prop
  supportType : Prop
  closureProperties : Prop

structure IteratedForcingEvidence (I : IteratedForcingPackage) where
  iterationSequenceClosed : I.iterationSequence
  supportTypeClosed : I.supportType
  closurePropertiesClosed : I.closureProperties

def IteratedForcingClosed (I : IteratedForcingPackage) : Prop :=
  I.iterationSequence ∧ I.supportType ∧ I.closureProperties

theorem iterated_forcing_closed_from_evidence (I : IteratedForcingPackage)
    (E : IteratedForcingEvidence I) : IteratedForcingClosed I := by
  exact And.intro E.iterationSequenceClosed
    (And.intro E.supportTypeClosed E.closurePropertiesClosed)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse