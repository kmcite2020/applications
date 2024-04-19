import 'package:project_dermatosis/features/core/shared.dart';
import 'package:project_dermatosis/features/pictures/pictures.dart';
import 'package:project_dermatosis/features/pictures/pictures_bloc.dart';
import 'package:project_dermatosis/features/settings/settings_page/settings.dart';

import '../../../main.dart';
import '../gender_widget.dart';
import '../patient.dart';

class PatientPage extends ReactiveStatelessWidget {
  final String id;

  const PatientPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      id: context.routeData.arguments,
      builder: (patient) {
        if (patient == null) return CircularProgressIndicator().pad();
        return Scaffold(
          appBar: AppBar(
            title: patient.name.text(),
            leading: const LeadingBackButton(),
            actions: [
              patient.dateOfBirth.year.text(textScaleFactor: 1.2),
              const SizedBox(width: 8),
            ],
          ),
          body: ListView(
            children: [
              TextFormField(
                initialValue: patient.name,
                onChanged: (value) {
                  // patientsBloc.setPatientName(value, patient);
                },
                readOnly: !patient.editing,
              ).pad(),
              patient.id.text().pad(),
              patient.name.text().pad(),
              patient.editing.text().pad(),
              patient.address.text().pad(),
              patient.dateOfBirth.text().pad(),
              patient.gender.text().pad(),
              patient.pictures.text().pad(),
              patient.lesions.text().pad(),
              patient.contact.text().pad(),
              patient.diagnoses.text().pad(),
              patient.age.text().pad(),
              AgeWidget(age: patient.age),
              GenderWidget(id: patient.id),
              PatternsWidget(patient: patient),
              patient.id.text().pad(),
              ContactUI(id: patient.id),
              PicturesUI(patient: patient),
              ElevatedButton(
                onPressed: () {
                  // final LesionsBloc lesionsBloc = LesionsBloc();
                  // lesionsBloc.addLesionToPatient(
                  //   Lesion(),
                  //   patient,
                  // );
                },
                child: ''.text(),
              ).pad(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            heroTag: randomID,
            onPressed: () {
              // patientsBloc.setPatientEditing(
              //   !patient.editing,
              //   patient,
              // );
            },
            label: Text(
              (patient.editing ? 'EDITING' : 'READING'),
            ),
          ),
        );
      },
    );
  }
}

class PicturesUI extends ReactiveStatelessWidget {
  final Patient patient;

  const PicturesUI({
    Key? key,
    required this.patient,
  }) : super(key: key);

  Widget build(context) {
    if (patient.pictures.isEmpty || patient.editing) {
      return PopupMenuButton(
        itemBuilder: (context) => [
          ...imageriesManager.images.map(
            (e) => PopupMenuItem(
              value: e,
              child: e.path.text(),
            ),
          ),
        ],
        onSelected: (value) {
          // patientsBloc.addPatientPicture(value, patient);
        },
        icon: Icon(Icons.add),
      );
    }
    return Wrap(
      children: patient.pictures.map(
        (eachPicture) {
          return PictureUI(picture: eachPicture);
        },
      ).toList(),
    );
  }
}

class PictureUI extends StatelessWidget {
  const PictureUI({
    Key? key,
    required this.picture,
  }) : super(key: key);
  final Imagery picture;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: ClipRRect(
        child: Image.memory(picture.image!),
        borderRadius: BorderRadius.circular(
          settingsManager.settings.borderRadius,
        ),
      ).pad(),
    );
  }
}

class ContactUI extends StatelessWidget {
  static String? _validator(String? value) {
    if (value == null) {
      return 'Not valid.';
    }
    final x = int.tryParse(value);
    if (x == null) {
      return 'Not a valid integer.';
    }
    return null;
  }

  const ContactUI({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
        id: id,
        builder: (patient) {
          return patient.editing
              ? Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        initialValue: patient.contact.countryCode.toString(),
                        maxLength: 4,
                        validator: _validator,
                        onChanged: (value) {
                          // patientsBloc.setPatientContactCountryCode(
                          // value, patient);
                        },
                      ).pad(),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        initialValue: patient.contact.mnp.toString(),
                        maxLength: 3,
                        validator: _validator,
                        onChanged: (value) {
                          // patientsBloc.setPatientContactMnp(value, patient);
                        },
                      ).pad(),
                    ),
                    Expanded(
                      flex: 7,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        initialValue: patient.contact.phoneCode.toString(),
                        maxLength: 7,
                        validator: _validator,
                        onChanged: (value) {
                          // patientsBloc.setPatientContactPhoneCode(
                          //     value, patient);
                        },
                      ).pad(),
                    ),
                  ],
                )
              : patient.contact.text(textScaleFactor: 1.5).pad();
        });
  }
}

class PatternsWidget extends ReactiveStatelessWidget {
  const PatternsWidget({Key? key, required this.patient}) : super(key: key);
  final Patient patient;

  @override
  Widget build(BuildContext context) {
    // final PatternsModel patterns = patient.patterns;
    return Column(
      children: [
        // SwitchListTile(
        //   title: Text('Is the lesion localized or generalized'),
        //   // value: patterns.localizedOrGeneralized,
        //   onChanged: !patient.editing
        //       ? null
        //       : (localizedOrGeneralized) {
        //           patientsBloc.setPatientPatternsLocalizedOrGeneralized(
        //             localizedOrGeneralized,
        //             patient,
        //           );
        //         },
        // ),
        // SwitchListTile(
        //   title: Text('Is the lesion unilateral or bilateral'),
        //   value: patterns.unilateralOrBilateral,
        //   onChanged: !patient.editing
        //       ? null
        //       : (unilateralOrBilateral) {
        //           patientsBloc.setPatientPatternsUnilateralOrBilateral(
        //             unilateralOrBilateral,
        //             patient,
        //           );
        //         },
        // ),
        // SwitchListTile(
        //   title: Text('Is the lesion symmetrical or assymetrical'),
        //   value: patterns.symmetricalOrAssymetrical,
        //   onChanged: !patient.editing
        //       ? null
        //       : (symmetricalOrAsymmetrical) {
        //           patientsBloc.setPatientPatternsSymmetricalOrAssymetrical(
        //             symmetricalOrAsymmetrical,
        //             patient,
        //           );
        //         },
        // ),
        // SwitchListTile(
        //   title: Text('Is the lesion truncal or acral'),
        //   value: patterns.truncalOrAcral,
        //   onChanged: !patient.editing
        //       ? null
        //       : (truncalOrAcral) =>
        //           patientsBloc.setPatientPatternsTruncalOrAcral(
        //             truncalOrAcral,
        //             patient,
        //           ),
        // ),
        // SwitchListTile(
        //   title: Text('Is the lesion on flexor or extensor surface'),
        //   value: patterns.flexorOrExtensor,
        //   onChanged: !patient.editing
        //       ? null
        //       : (value) => patientsBloc.setPatientPatternsFlexorOrExtensor(
        //             value,
        //             patient,
        //           ),
        // ),
        // SwitchListTile(
        //   title: Text('Is the lesion on exposed areas or covered areas'),
        //   value: patterns.exposedOrCovered,
        //   onChanged: !patient.editing
        //       ? null
        //       : (value) => patientsBloc.setPatientPatternsExposedOrCovered(
        //             value,
        //             patient,
        //           ),
        // ),
      ],
    );
  }
}

class AgeWidget extends ReactiveStatelessWidget {
  const AgeWidget({
    Key? key,
    required this.age,
  }) : super(key: key);
  final Duration age;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(settingsManager.settings.borderRadius),
        ),
        child: age.formatDuration.text(),
      ),
    );
  }
}
