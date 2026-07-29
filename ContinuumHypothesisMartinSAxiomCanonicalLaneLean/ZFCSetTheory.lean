import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure ZFCAxioms where
  extensionality : Prop
  foundation : Prop
  comprehension : Prop
  pairing : Prop
  union : Prop
  powerSet : Prop
  infinity : Prop
  replacement : Prop
  choice : Prop

structure ZFCSetTheory where
  axioms : ZFCAxioms
  consistent : Prop
  modelsExist : Prop

structure ZFCEvidence (Z : ZFCSetTheory) where
  consistentClosed : Z.consistent
  modelsExistClosed : Z.modelsExist

def ZFCClosed (Z : ZFCSetTheory) : Prop :=
  Z.consistent ∧ Z.modelsExist

theorem zfc_closed_from_evidence (Z : ZFCSetTheory) (E : ZFCEvidence Z) : ZFCClosed Z :=
  And.intro E.consistentClosed E.modelsExistClosed

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse
