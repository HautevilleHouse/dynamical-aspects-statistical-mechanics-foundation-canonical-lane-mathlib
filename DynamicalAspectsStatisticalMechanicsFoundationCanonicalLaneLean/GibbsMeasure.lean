import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure GibbsMeasure where
  potential : (ℕ → ℝ) → ℝ
  inverseTemperature : ℝ
  measure : Measure (ℕ → ℝ)
  DLRProperty : Prop
  quasilocality : Prop
  uniquenessCriterion : Prop

structure GibbsMeasureEvidence (G : GibbsMeasure) where
  DLRPropertyClosed : G.DLRProperty
  quasilocalityClosed : G.quasilocality
  uniquenessCriterionClosed : G.uniquenessCriterion

def GibbsMeasureClosed (G : GibbsMeasure) : Prop :=
  G.DLRProperty ∧ G.quasilocality ∧ G.uniquenessCriterion

theorem gibbs_measure_closed_from_evidence (G : GibbsMeasure) (E : GibbsMeasureEvidence G) :
    GibbsMeasureClosed G := by
  exact And.intro E.DLRPropertyClosed
    (And.intro E.quasilocalityClosed E.uniquenessCriterionClosed)

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
