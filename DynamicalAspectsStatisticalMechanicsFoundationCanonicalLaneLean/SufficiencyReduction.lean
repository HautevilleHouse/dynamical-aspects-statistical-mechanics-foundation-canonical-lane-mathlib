import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure SufficiencyPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  statistic : sampleSpace → Type w
  conditionalDistribution : sampleSpace → Type x
  factorizationCondition : Prop
  regularConditional : Prop
  factorizationConditionTerm : factorizationCondition
  regularConditionalTerm : regularConditional

structure SufficiencyEvidence (S : SufficiencyPackage) where
  neymanCriterionHolds : S.factorizationCondition
  minimalSufficiencyHolds : Prop
  minimalSufficiencyHoldsTerm : minimalSufficiencyHolds

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationCondition ∧ S.regularConditional

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro S.factorizationConditionTerm S.regularConditionalTerm

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse