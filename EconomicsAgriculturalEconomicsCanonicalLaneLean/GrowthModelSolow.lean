import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure GrowthModelPackage (A : AdmissibleClass) where
  aggregateProductionFunction : Type u
  capitalAccumulation : Prop
  laborForceGrowth : Prop
  technologicalProgress : Prop
  steadyStateCapital : Prop
  goldenRuleCapital : Prop
  convergenceHypothesis : Prop

structure GrowthModelEvidence (A : AdmissibleClass) (P : GrowthModelPackage A) where
  capitalAccumulationClosed : P.capitalAccumulation
  steadyStateCapitalClosed : P.steadyStateCapital
  goldenRuleCapitalClosed : P.goldenRuleCapital
  convergenceHypothesisClosed : P.convergenceHypothesis

def GrowthModelClosed (A : AdmissibleClass) (P : GrowthModelPackage A) : Prop :=
  P.capitalAccumulation ∧ P.steadyStateCapital ∧
  P.goldenRuleCapital ∧ P.convergenceHypothesis

theorem growth_model_closed_from_evidence
    (A : AdmissibleClass) (P : GrowthModelPackage A) (E : GrowthModelEvidence A P) :
    GrowthModelClosed A P := by
  exact And.intro E.capitalAccumulationClosed
    (And.intro E.steadyStateCapitalClosed
      (And.intro E.goldenRuleCapitalClosed E.convergenceHypothesisClosed))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse