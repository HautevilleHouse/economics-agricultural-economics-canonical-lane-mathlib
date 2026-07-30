import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure ProducerTheoryPackage (A : AdmissibleClass) where
  productionFunction : Type u
  costFunction : Type v
  profitFunction : Type w
  profitMaximization : Prop
  supplyFunctionHomogeneousDegreeZero : Prop
  convexityOfCostFunction : Prop
  shepherdLemma : Prop

structure ProducerTheoryEvidence (A : AdmissibleClass) (P : ProducerTheoryPackage A) where
  profitMaximizationClosed : P.profitMaximization
  supplyFunctionHomogeneousDegreeZeroClosed : P.supplyFunctionHomogeneousDegreeZero
  convexityOfCostFunctionClosed : P.convexityOfCostFunction
  shepherdLemmaClosed : P.shepherdLemma

def ProducerTheoryClosed (A : AdmissibleClass) (P : ProducerTheoryPackage A) : Prop :=
  P.profitMaximization ∧ P.supplyFunctionHomogeneousDegreeZero ∧
  P.convexityOfCostFunction ∧ P.shepherdLemma

theorem producer_theory_closed_from_evidence
    (A : AdmissibleClass) (P : ProducerTheoryPackage A) (E : ProducerTheoryEvidence A P) :
    ProducerTheoryClosed A P := by
  exact And.intro E.profitMaximizationClosed
    (And.intro E.supplyFunctionHomogeneousDegreeZeroClosed
      (And.intro E.convexityOfCostFunctionClosed E.shepherdLemmaClosed))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse