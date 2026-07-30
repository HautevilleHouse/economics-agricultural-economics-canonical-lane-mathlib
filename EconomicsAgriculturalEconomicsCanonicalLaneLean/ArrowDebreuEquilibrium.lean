import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  preferenceProfile : Type v
  productionSet : Type w
  initialEndowments : Type x
  priceVector : Type y
  agentConsumption : Type z
  firmOutput : Type t
  utilityFunctions : Type u1
  productionSetsDefined : Prop
  profitMaximization : Prop
  utilityMaximization : Prop
  marketClearingConditions : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  existenceProof : Prop
  convexityAssumptions : Prop
  continuityAssumptions : Prop
  strictMonotonicity : Prop
  boundaryConditions : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  productionSetsDefinedClosed : A.productionSetsDefined
  profitMaximizationClosed : A.profitMaximization
  utilityMaximizationClosed : A.utilityMaximization
  marketClearingConditionsClosed : A.marketClearingConditions
  firstWelfareTheoremClosed : A.firstWelfareTheorem
  secondWelfareTheoremClosed : A.secondWelfareTheorem
  existenceProofClosed : A.existenceProof
  convexityAssumptionsClosed : A.convexityAssumptions
  continuityAssumptionsClosed : A.continuityAssumptions
  strictMonotonicityClosed : A.strictMonotonicity
  boundaryConditionsClosed : A.boundaryConditions

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.productionSetsDefined ∧ A.profitMaximization ∧
  A.utilityMaximization ∧ A.marketClearingConditions ∧
  A.firstWelfareTheorem ∧ A.secondWelfareTheorem ∧
  A.existenceProof ∧ A.convexityAssumptions ∧
  A.continuityAssumptions ∧ A.strictMonotonicity ∧
  A.boundaryConditions

theorem arrow_debreu_equilibrium_closed_from_evidence
    (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.productionSetsDefinedClosed
    (And.intro E.profitMaximizationClosed
      (And.intro E.utilityMaximizationClosed
        (And.intro E.marketClearingConditionsClosed
          (And.intro E.firstWelfareTheoremClosed
            (And.intro E.secondWelfareTheoremClosed
              (And.intro E.existenceProofClosed
                (And.intro E.convexityAssumptionsClosed
                  (And.intro E.continuityAssumptionsClosed
                    (And.intro E.strictMonotonicityClosed
                      E.boundaryConditionsClosed)))))))))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse