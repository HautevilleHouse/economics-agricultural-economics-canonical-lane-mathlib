import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure AgriculturalProductionFunctionPackage where
  inputSet : Type u
  outputSet : Type v
  productionFunction : Type w
  landInput : Type x
  laborInput : Type y
  capitalInput : Type z
  technologyParameter : Type t
  returnsToScale : Prop
  factorSubstitution : Prop
  technicalEfficiency : Prop
  allocationMechanism : Prop
  inputPrices : Prop
  outputPrice : Prop
  profitMaximizationCond : Prop
  costMinimizationCond : Prop

structure AgriculturalProductionFunctionEvidence (A : AgriculturalProductionFunctionPackage) where
  returnsToScaleClosed : A.returnsToScale
  factorSubstitutionClosed : A.factorSubstitution
  technicalEfficiencyClosed : A.technicalEfficiency
  allocationMechanismClosed : A.allocationMechanism
  inputPricesClosed : A.inputPrices
  outputPriceClosed : A.outputPrice
  profitMaximizationCondClosed : A.profitMaximizationCond
  costMinimizationCondClosed : A.costMinimizationCond

def AgriculturalProductionFunctionClosed (A : AgriculturalProductionFunctionPackage) : Prop :=
  A.returnsToScale ∧ A.factorSubstitution ∧
  A.technicalEfficiency ∧ A.allocationMechanism ∧
  A.inputPrices ∧ A.outputPrice ∧
  A.profitMaximizationCond ∧ A.costMinimizationCond

theorem agricultural_production_function_closed_from_evidence
    (A : AgriculturalProductionFunctionPackage) (E : AgriculturalProductionFunctionEvidence A) :
    AgriculturalProductionFunctionClosed A := by
  exact And.intro E.returnsToScaleClosed
    (And.intro E.factorSubstitutionClosed
      (And.intro E.technicalEfficiencyClosed
        (And.intro E.allocationMechanismClosed
          (And.intro E.inputPricesClosed
            (And.intro E.outputPriceClosed
              (And.intro E.profitMaximizationCondClosed
                E.costMinimizationCondClosed))))))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse