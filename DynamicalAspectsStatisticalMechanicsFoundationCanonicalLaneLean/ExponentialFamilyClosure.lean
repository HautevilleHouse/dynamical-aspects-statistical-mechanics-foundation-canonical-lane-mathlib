import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure ExponentialFamilyPackage where
  sampleSpace : Type u
  naturalParameter : Type v
  sufficientStatistic : sampleSpace → naturalParameter
  logNormalizer : naturalParameter → ℝ
  carrierMeasure : Type w
  finiteDimensionalParameter : Prop
  exponentialForm : Prop
  finiteDimensionalParameterTerm : finiteDimensionalParameter
  exponentialFormTerm : exponentialForm

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  logNormalizerConvex : Prop
  logNormalizerConvexClosed : logNormalizerConvex
  sufficientStatisticComplete : Prop
  sufficientStatisticCompleteClosed : sufficientStatisticComplete

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.finiteDimensionalParameter ∧ E.exponentialForm

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro E.finiteDimensionalParameterTerm E.exponentialFormTerm

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse