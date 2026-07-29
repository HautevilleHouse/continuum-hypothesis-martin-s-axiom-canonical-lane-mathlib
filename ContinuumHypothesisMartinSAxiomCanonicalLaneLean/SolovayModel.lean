import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure SolovayModelPackage where
  inaccessibleCardinal : Cardinal
  LevyCollapse : Prop
  allSetsLebesgueMeasurable : Prop
  dependentChoiceHolds : Prop
  CHFails : Prop

structure SolovayModelEvidence (S : SolovayModelPackage) where
  inaccessibleCardinalClosed : S.inaccessibleCardinal.isRegular
  LevyCollapseClosed : S.LevyCollapse
  allSetsLebesgueMeasurableClosed : S.allSetsLebesgueMeasurable
  dependentChoiceHoldsClosed : S.dependentChoiceHolds
  CHFailsClosed : S.CHFails

def SolovayModelClosed (S : SolovayModelPackage) : Prop :=
  S.allSetsLebesgueMeasurable ∧ S.dependentChoiceHolds ∧ S.CHFails

theorem solovay_model_closed_from_evidence (S : SolovayModelPackage) (E : SolovayModelEvidence S) :
    SolovayModelClosed S := by
  exact And.intro E.allSetsLebesgueMeasurableClosed
    (And.intro E.dependentChoiceHoldsClosed E.CHFailsClosed)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse