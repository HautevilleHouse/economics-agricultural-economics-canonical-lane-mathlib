import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure LandUseModelPackage where
  landAllocation : Prop
  cropChoice : Prop
  soilQuality : Prop
  irrigationInfrastructure : Prop
  environmentalRegulations : Prop
  yieldUncertainty : Prop

structure LandUseModelEvidence (L : LandUseModelPackage) where
  landAllocationClosed : L.landAllocation
  cropChoiceClosed : L.cropChoice
  soilQualityClosed : L.soilQuality
  irrigationInfrastructureClosed : L.irrigationInfrastructure
  environmentalRegulationsClosed : L.environmentalRegulations
  yieldUncertaintyClosed : L.yieldUncertainty

def LandUseModelClosed (L : LandUseModelPackage) : Prop :=
  L.landAllocation ∧ L.cropChoice ∧ L.soilQuality ∧
  L.irrigationInfrastructure ∧ L.environmentalRegulations ∧ L.yieldUncertainty

theorem land_use_model_closed_from_evidence (L : LandUseModelPackage)
    (E : LandUseModelEvidence L) : LandUseModelClosed L := by
  exact And.intro E.landAllocationClosed
    (And.intro E.cropChoiceClosed
      (And.intro E.soilQualityClosed
        (And.intro E.irrigationInfrastructureClosed
          (And.intro E.environmentalRegulationsClosed E.yieldUncertaintyClosed))))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse
