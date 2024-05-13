import 'package:manager/manager.dart';
import 'package:prescription_er/main.dart';
import 'package:prescription_er/prescriptions/patients_rm.dart';
import 'package:prescription_er/prescriptions/prescription.dart';

import 'complaints.dart';
import 'patient_builder.dart';

class PatientPage extends StatelessWidget {
  const PatientPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final patient = patientsRM.get(id);
    return Scaffold(
      appBar: AppBar(
        title: patient.name.text(),
        actions: [
          Tooltip(
            message: 'years',
            child: CircleAvatar(
              child: (patient.age.inDays ~/ 365).text(),
            ),
          ).pad(),
        ],
        backgroundColor: patient.triage.color,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          "ARRIVAL TIME".text().pad(),
          () {
            final hour = patient.arrivalAt.hour;
            final min = patient.arrivalAt.minute;
            return '$hour:$min'.text();
          }()
              .pad(),
          "ARRIVAL DATE".text().pad(),
          () {
            final day = patient.arrivalAt.day;
            final month = patient.arrivalAt.month;
            final year = patient.arrivalAt.year;
            return '$day-$month-$year'.text();
          }()
              .pad(),
          DropdownButtonFormField(
            value: patient.gender,
            items: Gender.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (gender) {
              patientsRM(patient.copyWith(gender: gender!));
            },
          ).pad(),
          'ID: ${patient.id}'.text().pad(),
          TextFormField(
            key: Key(id),
            decoration: InputDecoration(labelText: 'NAME'),
            initialValue: patient.name,
            onChanged: (name) => patientsRM(
              patient.copyWith(name: name),
            ),
          ).pad(),
          TextFormField(
            key: Key(id),
            decoration: InputDecoration(labelText: 'FATHER NAME'),
            initialValue: patient.fatherName,
            onChanged: (value) {
              patientsRM(
                patient.copyWith(fatherName: value),
              );
            },
          ).pad(),
          PresentingComplaintsUI(id: id),
          ExaminationsUI(id: id),
          VitalsMonitoringUI(id: id),
          DropdownButtonFormField(
            value: patient.triage,
            items: Triage.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (triage) {
              patientsRM(patient.copyWith(triage: triage!));
            },
          ).pad(),
          DropdownButtonFormField(
            value: patient.patientStatus,
            items: PatientStatus.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (status) {
              patientsRM(patient.copyWith(patientStatus: status!));
            },
          ).pad(),
          TextFormField(
            decoration: InputDecoration(labelText: 'Provisional Diagnosis'),
            initialValue: patient.provisionalDiagnosis,
            minLines: 2,
            maxLines: 5,
            onChanged: (value) {
              patientsRM(patient.copyWith(provisionalDiagnosis: value));
            },
          ).pad(),
          TextFormField(
            decoration: InputDecoration(labelText: 'Diagnosis'),
            initialValue: patient.diagnosis,
            minLines: 1,
            maxLines: 2,
            onChanged: (value) {
              patientsRM(patient.copyWith(diagnosis: value));
            },
          ).pad(),
        ],
      ),
    );
  }
}

class ExaminationsUI extends StatelessWidget {
  final String id;

  ExaminationsUI({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      id: id,
      builder: (patient) {
        void setExaminations(Examinations examinations) {
          patientsRM(patient.copyWith(examinations: examinations));
        }

        final examinations = patient.examinations;
        return ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'EYE'),
              initialValue: examinations.eye,
              onChanged: (eye) {
                setExaminations(examinations.copyWith(eye: eye));
              },
              minLines: 1,
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'ENT'),
              initialValue: examinations.ent,
              onChanged: (ent) {
                setExaminations(examinations.copyWith(ent: ent));
              },
              minLines: 1,
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'CVS'),
              initialValue: examinations.cvs,
              onChanged: (cvs) {
                setExaminations(examinations.copyWith(cvs: cvs));
              },
              minLines: 1,
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'CNS'),
              initialValue: examinations.cns,
              onChanged: (cns) {
                setExaminations(examinations.copyWith(cns: cns));
              },
              minLines: 1,
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'PULMO'),
              initialValue: examinations.pulmo,
              onChanged: (pulmo) {
                setExaminations(examinations.copyWith(pulmo: pulmo));
              },
              minLines: 1,
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'SKIN'),
              initialValue: examinations.skin,
              onChanged: (skin) {
                setExaminations(examinations.copyWith(skin: skin));
              },
              minLines: 1,
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'GI'),
              initialValue: examinations.gi,
              onChanged: (gi) {
                setExaminations(examinations.copyWith(gi: gi));
              },
              minLines: 1,
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'GU'),
              initialValue: examinations.gu,
              onChanged: (gu) {
                setExaminations(examinations.copyWith(gu: gu));
              },
              minLines: 1,
              maxLines: 3,
            ).pad(),
          ],
        );
      },
    );
  }
}

class VitalsMonitoringUI extends StatelessWidget {
  const VitalsMonitoringUI({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      builder: (context) {
        final vitals = context.vitals;
        return Wrap(
          children: [
            'BP is '.text(),
            vitals.systolic.text(),
            '/'.text(),
            vitals.diastolic.text(),
            ', Sp02 is '.text(),
            vitals.oxygen.text(),
            '%, Pulse is '.text(),
            vitals.pulse.text(),
            'bpm, & Temperature is '.text(),
            vitals.temperature.text(),
            ' F.'.text(),
          ],
        ).pad();
      },
      id: id,
    );
  }
}
