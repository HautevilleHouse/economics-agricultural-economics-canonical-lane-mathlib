import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure ProductionFunctionParameters where
  laborInput : ℝ
  capitalInput : ℝ
  landInput : ℝ
  technologyParameter : ℝ

structure ProductionFunctionPackage (P : ProductionFunctionParameters) where
  output : ℝ
  marginalProductLabor : Prop
  marginalProductCapital : Prop
  returnsToScale : Prop

def ProductionFunctionEvidence {P : ProductionFunctionParameters} (F : ProductionFunctionPackage P) : Prop :=
  F.marginalProductLabor ∧ F.marginalProductCapital ∧ F.returnsToScale

def ProductionFunctionClosed {P : ProductionFunctionParameters} (F : ProductionFunctionPackage P) : Prop :=
  F.marginalProductLabor ∧ F.marginalProductCapital ∧ F.returnsToScale

theorem production_function_closed_from_evidence
    {P : ProductionFunctionParameters} (F : ProductionFunctionPackage P) (E : ProductionFunctionEvidence F) :
    ProductionFunctionClosed F := by
  exact And.intro E (And.intro (by exact E.2) (by exact E.3))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse
