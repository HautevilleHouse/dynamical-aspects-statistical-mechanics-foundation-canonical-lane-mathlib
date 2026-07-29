import canonicalLaneMathlib.AdmissibleClass

/-!
# Gibbs Measure Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure GibbsMeasurePackage where
  stateSpace : Type u
  hamiltonian : stateSpace → ℝ
  inverseTemperature : ℝ
  partitionFunction : ℝ
  measureDefined : Prop
  measureNormalized : Prop

def GibbsMeasureClosed (G : GibbsMeasurePackage) : Prop :=
  G.measureDefined ∧ G.measureNormalized

structure GibbsMeasureEvidence (G : GibbsMeasurePackage) where
  measureDefinedClosed : G.measureDefined
  measureNormalizedClosed : G.measureNormalized

theorem gibbs_measure_closed_from_evidence (G : GibbsMeasurePackage) (E : GibbsMeasureEvidence G) :
    GibbsMeasureClosed G := by
  exact And.intro E.measureDefinedClosed E.measureNormalizedClosed

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse