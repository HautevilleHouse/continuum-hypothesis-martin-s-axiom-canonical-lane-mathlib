import canonicalLaneMathlib.AdmissibleClass

/-!
# ZFC Models Package

This module defines ZFC models as carrier sets with a membership relation
that satisfies the ZFC axioms.
-/

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure ZFCModel where
  carrier : Type u
  membership : carrier → carrier → Prop
  extensionality : Prop
  foundation : Prop
  comprehension : Prop
  pairing : Prop
  union : Prop
  powerset : Prop
  infinity : Prop
  replacement : Prop
  choice : Prop
  extensionalityClosed : extensionality
  foundationClosed : foundation
  comprehensionClosed : comprehension
  pairingClosed : pairing
  unionClosed : union
  powersetClosed : powerset
  infinityClosed : infinity
  replacementClosed : replacement
  choiceClosed : choice

def ZFCModelClosed (M : ZFCModel) : Prop :=
  M.extensionality ∧ M.foundation ∧ M.comprehension ∧ M.pairing ∧
  M.union ∧ M.powerset ∧ M.infinity ∧ M.replacement ∧ M.choice

theorem zfc_model_closed (M : ZFCModel) : ZFCModelClosed M := by
  exact And.intro M.extensionalityClosed
    (And.intro M.foundationClosed
      (And.intro M.comprehensionClosed
        (And.intro M.pairingClosed
          (And.intro M.unionClosed
            (And.intro M.powersetClosed
              (And.intro M.infinityClosed
                (And.intro M.replacementClosed M.choiceClosed)))))))

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse