import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure NeymanPearsonPackage where
  hypothesis0 : Type u
  hypothesis1 : Type v
  likelihoodRatio : hypothesis0 → hypothesis1 → ℝ
  threshold : ℝ
  size : ℝ
  power : ℝ
  sizeComputed : Prop
  powerComputed : Prop
  sizeComputedTerm : sizeComputed
  powerComputedTerm : powerComputed

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  optimalTestExists : Prop
  optimalTestExistsClosed : optimalTestExists
  mostPowerfulClosed : Prop
  mostPowerfulClosedTerm : mostPowerfulClosed

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.sizeComputed ∧ N.powerComputed

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage) (E : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro N.sizeComputedTerm N.powerComputedTerm

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse