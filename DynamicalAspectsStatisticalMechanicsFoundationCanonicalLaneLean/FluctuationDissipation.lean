import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure FluctuationDissipationPackage where
  observable : Type u
  correlationFunction : observable → observable → ℝ → ℝ
  responseFunction : observable → observable → ℝ → ℝ
  fluctuationDissipationTheorem : Prop

structure FluctuationDissipationEvidence (F : FluctuationDissipationPackage) where
  fluctuationDissipationTheoremClosed : F.fluctuationDissipationTheorem

def FluctuationDissipationClosed (F : FluctuationDissipationPackage) : Prop :=
  F.fluctuationDissipationTheorem

theorem fluctuation_dissipation_closed_from_evidence (F : FluctuationDissipationPackage) (E : FluctuationDissipationEvidence F) : FluctuationDissipationClosed F :=
  E.fluctuationDissipationTheoremClosed

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse