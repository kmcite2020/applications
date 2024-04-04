import 'package:flutter/material.dart';
import 'package:project_dermatosis/features/core/shared.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'patient.dart';

class GenderWidget extends ReactiveStatelessWidget {
  const GenderWidget({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      id: id,
      builder: (patient) {
        final Gender gender = patient.gender;
        return patient.editing
            ? DropdownButtonFormField(
                value: patient.gender,
                items: Gender.values
                    .map(
                      (eachGender) => DropdownMenuItem(
                        value: eachGender,
                        child: eachGender.name.toUpperCase().text(),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  // patientsBloc.setPatientGender(value!, patient);
                },
              ).pad()
            : genderIcon(gender).pad();
      },
    );
  }

  Widget genderIcon(Gender gender) {
    return switch (gender) {
      Gender.male => const Icon(
          Icons.male,
          size: 40,
        ),
      Gender.female => const Icon(
          Icons.female,
          size: 40,
        ),
    };
  }
}
