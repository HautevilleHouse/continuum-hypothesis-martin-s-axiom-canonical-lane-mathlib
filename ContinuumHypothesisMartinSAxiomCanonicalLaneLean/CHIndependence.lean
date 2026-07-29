import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure CHIndependencePackage where
  modelZFC : Type u
  CHTruthValue : Prop
  forcingExtensionExists : Prop
  relativeConsistencyProof : Prop

structure CHIndependenceEvidence (I : CHIndependencePackage) where
  modelZFCClosed : I.modelZFC = Type u
  CHTruthValueClosed : I.CHTruthValue
  forcingExtensionExistsClosed : I.forcingExtensionExists
  relativeConsistencyProofClosed : I.relativeConsistencyProof

def CHIndependenceClosed (I : CHIndependencePackage) : Prop :=
  I.CHTruthValue ∧ I.forcingExtensionExists ∧ I.relativeConsistencyProof

theorem ch_independence_closed_from_evidence (I : CHIndependencePackage) (E : CHIndependenceEvidence I) :
    CHIndependenceClosed I := by
  exact And.intro E.CHTruthValueClosed
    (And.intro E.forcingExtensionExistsClosed E.relativeConsistencyProofClosed)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse