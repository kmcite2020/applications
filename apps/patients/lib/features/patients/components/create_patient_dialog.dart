import '../../../main.dart';

class CreatePatientDialog extends UI {
  const CreatePatientDialog({super.key});
  static final complaintsRM = RM.injectTextEditing();
  @override
  Widget build(BuildContext context) {
    const setPatient = newPatientManager.setPatient;
    final patient = newPatientManager.patient;
    return Dialog(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DropdownButtonFormField(
              value: newPatientManager.patient.patientType,
              items: PatientType.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: e.name.toUpperCase().text(padding: 0),
                    ),
                  )
                  .toList(),
              onChanged: (patientType) {
                if (patientType == null) return;
                setPatient(patient.copyWith(patientType: patientType));
              },
              decoration: const InputDecoration(labelText: 'TRIAGE'),
            ).pad(),
            TextFormField(
              initialValue: patient.name,
              onChanged: (value) {
                setPatient(patient.copyWith(name: value));
              },
              decoration: const InputDecoration(labelText: 'NAME'),
            ).pad(),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      try {
                        final age = patient.age.copyWith(
                          value: int.parse(value),
                        );
                        setPatient(patient.copyWith(age: age));
                      } catch (e) {
                        setPatient(
                          patient.copyWith(
                            age: patient.age.copyWith(value: 0),
                          ),
                        );
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'AGE',
                    ),
                  ).pad(),
                ),
                Expanded(
                  child: DropdownButtonFormField(
                    value: patient.age.ageUnit,
                    decoration: const InputDecoration(labelText: 'UNIT'),
                    items: AgeUnit.values.map(
                      (eachAgeUnit) {
                        return DropdownMenuItem(
                          value: eachAgeUnit,
                          child:
                              eachAgeUnit.name.toUpperCase().text(padding: 0),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      if (value == null) return;
                      final age = patient.age;
                      setPatient(
                        patient.copyWith(
                          age: age.copyWith(ageUnit: value),
                        ),
                      );
                    },
                  ).pad(),
                ),
              ],
            ),
            AgeUI(age: patient.age),
            Row(
              children: [
                IconButton.filledTonal(
                  onPressed: () => navigator.back(0),
                  icon: const Icon(Icons.save),
                ).pad(padding: const EdgeInsets.only(left: 8)),
                IconButton.filledTonal(
                  onPressed: () => navigator.back(),
                  icon: const Icon(Icons.cancel),
                ).pad(padding: const EdgeInsets.only(left: 8)),
              ],
            )
          ],
        ).pad(),
      ),
    );
  }
}

// ignore: camel_case_types
class newPatientManager {
  static final _patientRM = RM.inject<Patient>(() => Patient());
  static void setPatient(Patient patient) => _patientRM.state = patient;
  static Patient get patient => _patientRM.state;
}

// ignore: camel_case_types
// class patientComplaintsManager {
//   static void setComplaints(List<String> complaintsIDs) {
//     // newPatientManager.setPatient(
//     //   newPatientManager.patient.copyWith(complaintIDs: complaintsIDs),
//     // );
//   }

//   static void addComplaint(String complaintID) {
//     // setComplaints(
//     //   List.of(newPatientManager.patient.complaintIDs)..add(complaintID),
//     // );
//   }

//   static void removeComplaint(String complaintID) {
//     // setComplaints(
//     //   List.of(newPatientManager.patient.complaintIDs)..remove(complaintID),
//     // );
//   }

//   static bool contains(String complaintID) {
//     return true;
//     // newPatientManager.patient.complaintIDs.contains(complaintID);
//   }
// }
