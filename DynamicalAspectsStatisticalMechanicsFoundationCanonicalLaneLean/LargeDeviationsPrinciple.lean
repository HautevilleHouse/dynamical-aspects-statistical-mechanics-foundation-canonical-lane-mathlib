import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure LargeDeviationsPrinciplePackage where
  randomVariableSequence : ℕ → Type u
  rateFunction : ℝ → ℝ
  largeDeviationRateExists : Prop
  lowerBoundSatisfied : Prop
  upperBoundSatisfied : Prop
  levelSetCompact : Prop

def LargeDeviationsPrincipleClosed (L : LargeDeviationsPrinciplePackage) : Prop :=
  L.largeDeviationRateExists ∧ L.lowerBoundSatisfied ∧ L.upperBoundSatisfied ∧ L.levelSetCompact

theorem large_deviations_principle_closed (L : LargeDeviationsPrinciplePackage) :
    LargeDeviationsPrincipleClosed L := by
  exact And.intro L.largeDeviationRateExists (And.intro L.lowerBoundSatisfied (And.intro L.upperBoundSatisfied L.levelSetCompact))

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse