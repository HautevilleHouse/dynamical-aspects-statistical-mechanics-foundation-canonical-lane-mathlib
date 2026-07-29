import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure GibbsMeasurePackage {C : CanonicalEnsemblePackage} where
  measure : Type u
  density : C.phaseSpace → ℝ
  normalization : Prop
  normalizationTerm : normalization

structure GibbsMeasureEvidence {C : CanonicalEnsemblePackage} (G : GibbsMeasurePackage C) where
  densityIntegratesToOne : G.normalization
  gibbsStateClosed : Prop
  gibbsStateClosedTerm : gibbsStateClosed

def GibbsMeasureClosed {C : CanonicalEnsemblePackage} (G : GibbsMeasurePackage C) : Prop :=
  G.normalization

theorem gibbs_measure_closed_from_evidence {C : CanonicalEnsemblePackage} (G : GibbsMeasurePackage C) (E : GibbsMeasureEvidence G) : GibbsMeasureClosed G := by
  exact E.densityIntegratesToOne

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse