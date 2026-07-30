import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure ProductionFunctionPackage where
  inputSet : Type
  outputSet : Type
  productionFunction : Type
  returnsToScale : Prop
  profitMaximization : Prop
  costMinimization : Prop

structure ProductionFunctionEvidence (P : ProductionFunctionPackage) where
  returnsToScaleClosed : P.returnsToScale
  profitMaximizationClosed : P.profitMaximization
  costMinimizationClosed : P.costMinimization

def ProductionFunctionClosed (P : ProductionFunctionPackage) : Prop :=
  P.returnsToScale ∧ P.profitMaximization ∧ P.costMinimization

theorem production_function_closed_from_evidence (P : ProductionFunctionPackage)
    (E : ProductionFunctionEvidence P) : ProductionFunctionClosed P := by
  exact And.intro E.returnsToScaleClosed
    (And.intro E.profitMaximizationClosed E.costMinimizationClosed)

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse