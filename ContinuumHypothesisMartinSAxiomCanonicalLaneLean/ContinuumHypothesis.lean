import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ZFCSetTheory

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure ContinuumHypothesisPackage (Z : ZFCSetTheory) where
  alephOneCardinal : Cardinal
  continuumCardinal : Cardinal
  chStatement : Prop
  chIndependent : Prop

structure ContinuumHypothesisEvidence (Z : ZFCSetTheory) (CH : ContinuumHypothesisPackage Z) where
  chStatementClosed : CH.chStatement
  chIndependentClosed : CH.chIndependent

def ContinuumHypothesisClosed (Z : ZFCSetTheory) (CH : ContinuumHypothesisPackage Z) : Prop :=
  CH.chStatement ∧ CH.chIndependent

theorem continuum_hypothesis_closed_from_evidence (Z : ZFCSetTheory) (CH : ContinuumHypothesisPackage Z) (E : ContinuumHypothesisEvidence Z CH) :
  ContinuumHypothesisClosed Z CH :=
  And.intro E.chStatementClosed E.chIndependentClosed

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse
