import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalAirPollutionCanonicalLaneLean

structure AtmosphericDispersionPackage where
  windField : Type u
  turbulence : Type v
  chemicalTransform : Type w
  deposition : Type x
  dispersionModelValidated : Prop
  windFieldCalibrated : Prop
  turbulenceParameterized : Prop
  chemicalMechanismChecked : Prop
  depositionRatesVerified : Prop

structure AtmosphericDispersionEvidence (D : AtmosphericDispersionPackage) where
  dispersionModelValidatedClosed : D.dispersionModelValidated
  windFieldCalibratedClosed : D.windFieldCalibrated
  turbulenceParameterizedClosed : D.turbulenceParameterized
  chemicalMechanismCheckedClosed : D.chemicalMechanismChecked
  depositionRatesVerifiedClosed : D.depositionRatesVerified

def AtmosphericDispersionClosed (D : AtmosphericDispersionPackage) : Prop :=
  D.dispersionModelValidated ∧ D.windFieldCalibrated ∧
  D.turbulenceParameterized ∧ D.chemicalMechanismChecked ∧ D.depositionRatesVerified

theorem atmospheric_dispersion_closed_from_evidence (D : AtmosphericDispersionPackage)
    (Ev : AtmosphericDispersionEvidence D) : AtmosphericDispersionClosed D := by
  exact And.intro Ev.dispersionModelValidatedClosed
    (And.intro Ev.windFieldCalibratedClosed
      (And.intro Ev.turbulenceParameterizedClosed
        (And.intro Ev.chemicalMechanismCheckedClosed Ev.depositionRatesVerifiedClosed)))

end EnvironmentalAirPollutionCanonicalLaneLean
end HautevilleHouse