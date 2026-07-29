import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure MLEPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  logLikelihoodFunction : sampleSpace → parameterSpace → ℝ
  trueParameter : parameterSpace
  fisherInformation : parameterSpace → ℝ
  regularityConditions : Prop
  consistencyCondition : Prop
  regularityConditionsTerm : regularityConditions
  consistencyConditionTerm : consistencyCondition

structure MLEEvidence (M : MLEPackage) where
  consistencyProved : M.consistencyCondition
  asymptoticNormalityProved : Prop
  asymptoticNormalityProvedTerm : asymptoticNormalityProved

def MLEClosed (M : MLEPackage) : Prop :=
  M.regularityConditions ∧ M.consistencyCondition

theorem mle_closed_from_evidence (M : MLEPackage) (E : MLEEvidence M) : MLEClosed M := by
  exact And.intro M.regularityConditionsTerm M.consistencyConditionTerm

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse