rem PASS - [Bundle] Prescription Order Message

java -jar org.hl7.fhir.validator.jar Bundle-prescription-order.xml -version 4.0.1 -ig https://packages.simplifier.net/uk.ElectronicPrescriptionService.dev/-/uk.ElectronicPrescriptionService.dev-0.0.3-dev.tgz -ig C:\Development\NHSD\eps\StructureDefinition\ 

rem PASS - [MedicationRequest] Multiple medication codes validation

java -jar org.hl7.fhir.validator.jar MedicationRequest-multipleMedicationCodes-pass.xml -version 4.0.1 -ig https://packages.simplifier.net/uk.ElectronicPrescriptionService.dev/-/uk.ElectronicPrescriptionService.dev-0.0.3-dev.tgz -ig C:\Development\NHSD\eps\StructureDefinition\ -profile https://fhir.nhs.uk/R4/StructureDefinition/MM-MedicationRequest

rem FAIL - [MedicationRequest] Missing SNOMED medication codes

java -jar org.hl7.fhir.validator.jar MedicationRequest-missingSNOMEDMedicationCodes-fail.xml -version 4.0.1 -ig https://packages.simplifier.net/uk.ElectronicPrescriptionService.dev/-/uk.ElectronicPrescriptionService.dev-0.0.3-dev.tgz -ig C:\Development\NHSD\eps\StructureDefinition\ -profile https://fhir.nhs.uk/R4/StructureDefinition/MM-MedicationRequest

rem PASS - [MedicationRequest] non eps profile specified, must validate against MM profile pass (note will fail if resource doesn't also validate against specified profile)

java -jar org.hl7.fhir.validator.jar MedicationRequest-alienProfile-pass.xml -version 4.0.1 -ig https://packages.simplifier.net/uk.ElectronicPrescriptionService.dev/-/uk.ElectronicPrescriptionService.dev-0.0.3-dev.tgz -ig C:\Development\NHSD\eps\StructureDefinition\ -profile https://fhir.nhs.uk/R4/StructureDefinition/MM-MedicationRequest

rem PASS - [PractitionerRole] 

java -jar org.hl7.fhir.validator.jar PractitionerRole-pass.xml -version 4.0.1 -ig https://packages.simplifier.net/uk.ElectronicPrescriptionService.dev/-/uk.ElectronicPrescriptionService.dev-0.0.3-dev.tgz -ig C:\Development\NHSD\eps\StructureDefinition\ -profile https://fhir.nhs.uk/R4/StructureDefinition/MM-PractitionerRole