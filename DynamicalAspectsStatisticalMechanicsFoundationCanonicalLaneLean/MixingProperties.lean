import DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean.GibbsMeasure

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure MixingPropertiesPackage where
  strongMixing : Prop
  exponentialMixing : Prop
  decayOfCorrelations : Prop
  mixingCoefficient : ℕ → ℝ

def MixingPropertiesClosed (P : MixingPropertiesPackage) : Prop :=
  P.strongMixing ∧ P.exponentialMixing ∧ P.decayOfCorrelations

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse