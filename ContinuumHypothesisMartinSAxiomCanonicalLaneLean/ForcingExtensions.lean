import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.SetTheoreticAdmissibleClass

/-!
# Forcing Extensions Package
-/

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure ForcingExtensionPackage where
  poset : Type
  genericFilter : Type
  forcingExtension : Prop
  chainCondition : Prop
  cardinalPreservation : Prop

structure ForcingExtensionEvidence (F : ForcingExtensionPackage) where
  forcingExtensionClosed : F.forcingExtension
  chainConditionClosed : F.chainCondition
  cardinalPreservationClosed : F.cardinalPreservation

def ForcingExtensionClosed (F : ForcingExtensionPackage) : Prop :=
  F.forcingExtension ∧ F.chainCondition ∧ F.cardinalPreservation

theorem forcing_extension_closed_from_evidence (F : ForcingExtensionPackage)
    (E : ForcingExtensionEvidence F) : ForcingExtensionClosed F := by
  exact And.intro E.forcingExtensionClosed
    (And.intro E.chainConditionClosed E.cardinalPreservationClosed)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse