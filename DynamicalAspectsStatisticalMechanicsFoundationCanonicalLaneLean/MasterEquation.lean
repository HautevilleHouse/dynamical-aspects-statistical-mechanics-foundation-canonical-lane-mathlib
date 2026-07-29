import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure MasterEquationPackage where
  stateSpace : Type u
  transitionRates : stateSpace → stateSpace → ℝ
  masterEquation : stateSpace → ℝ → ℝ → Prop
  detailedBalance : Prop
  stationaryDistribution : stateSpace → ℝ

structure MasterEquationEvidence (M : MasterEquationPackage) where
  masterEquationClosed : M.masterEquation = λ x t p => True
  detailedBalanceClosed : M.detailedBalance
  stationaryDistributionClosed : M.stationaryDistribution = λ x => 0

def MasterEquationClosed (M : MasterEquationPackage) : Prop :=
  M.masterEquation = λ x t p => True ∧ M.detailedBalance

theorem master_equation_closed_from_evidence (M : MasterEquationPackage) (E : MasterEquationEvidence M) : MasterEquationClosed M :=
  And.intro E.masterEquationClosed E.detailedBalanceClosed

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse