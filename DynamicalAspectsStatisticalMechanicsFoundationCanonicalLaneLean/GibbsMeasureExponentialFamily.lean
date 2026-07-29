import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure GibbsMeasureExponentialFamilyPackage where
  sampleSpace : Type u
  sufficientStatistic : sampleSpace → ℝᵈ
  baseMeasure : Set sampleSpace → ℝ≥0
  logPartitionFunction : ℝᵈ → ℝ
  naturalParameterSpace : Set ℝᵈ
  exponentialFormProbability : Prop

def GibbsMeasureExponentialFamilyClosed (G : GibbsMeasureExponentialFamilyPackage) : Prop :=
  G.exponentialFormProbability

theorem gibbs_measure_exponential_family_closed (G : GibbsMeasureExponentialFamilyPackage) :
    GibbsMeasureExponentialFamilyClosed G := by
  exact And.intro G.exponentialFormProbability

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse