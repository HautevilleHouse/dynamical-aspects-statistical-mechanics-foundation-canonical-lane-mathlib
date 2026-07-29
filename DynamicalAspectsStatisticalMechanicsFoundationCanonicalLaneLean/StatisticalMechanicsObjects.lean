import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure StatisticalMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : MeasureTheory.Measure carrier

structure AdmittedObject where
  space : StatisticalMechanicsSpace
  equilibriumMeasure : MeasureTheory.Measure space.carrier
  dynamicalSystem : Type
  timeEvolution : dynamicalSystem → ℕ → space.carrier → space.carrier
  convergenceToEquilibrium : Prop
  convergenceSpeed : Prop
  conclusion : convergenceToEquilibrium ∧ convergenceSpeed

def witnessClosed (O : AdmittedObject) : Prop :=
  O.convergenceToEquilibrium ∧ O.convergenceSpeed

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse