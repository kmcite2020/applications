import 'package:manager/manager.dart';
import 'package:prescription_er/main.dart';
import 'package:prescription_er/prescriptions/patients_rm.dart';
import 'package:prescription_er/prescriptions/prescription.dart';

import 'complaints.dart';

class PatientPage extends UI {
  const PatientPage({
    super.key,
    required this.id,
  });
  final MR id;
  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      id: id,
      builder: (patient) => Scaffold(
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
        ),
        backgroundColor: patient.triage.color,
        body: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            "ARRIVAL TIME".text(),
            () {
              final hour = patient.arrivalAt.hour;
              final min = patient.arrivalAt.minute;
              return '$hour:$min'.text();
            }(),
            "ARRIVAL DATE".text(),
            () {
              final day = patient.arrivalAt.day;
              final month = patient.arrivalAt.month;
              final year = patient.arrivalAt.year;
              return '$day-$month-$year'.text();
            }(),
            'ID: ${patient.id}'.text().pad(),
            TextFormField(
              key: Key(id),
              decoration: InputDecoration(labelText: 'NAME'),
              initialValue: patient.name,
              onChanged: (value) {
                patientsRM.save(
                  patient.copyWith(name: value),
                );
              },
            ).pad(),
            TextFormField(
              key: Key(id),
              decoration: InputDecoration(labelText: 'FATHER NAME'),
              initialValue: patient.fatherName,
              onChanged: (value) {
                patientsRM.save(
                  patient.copyWith(fatherName: value),
                );
              },
            ).pad(),
            PresentingComplaintsUI(id: id),
            ExaminationsUI(id: id),
            VitalsMonitoringUI(id: id),
            patient.gender.text(),
            patient.triage.text(),
            patient.text().pad(),
            patient.patientStatus.text(),
            patient.diagnosis.text(),
            patient.provisionalDiagnosis.text(),
            patient.examinations.text(),
          ],
        ),
      ),
    );
  }
}

class ExaminationsUI extends UI {
  final MR id;

  ExaminationsUI({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return PatientBuilder(
      id: id,
      builder: (patient) {
        void setExaminations(Examinations examinations) {
          patientsRM.save(patient.copyWith(examinations: examinations));
        }

        final examinations = patient.examinations;
        return ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            examinations.text(),
            TextFormField(
              decoration: InputDecoration(labelText: 'EYE'),
              initialValue: examinations.eye,
              onChanged: (eye) {
                setExaminations(examinations.copyWith(eye: eye));
              },
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'ENT'),
              initialValue: examinations.ent,
              onChanged: (ent) {
                setExaminations(examinations.copyWith(ent: ent));
              },
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'CVS'),
              initialValue: examinations.cvs,
              onChanged: (cvs) {
                setExaminations(examinations.copyWith(cvs: cvs));
              },
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'CNS'),
              initialValue: examinations.cns,
              onChanged: (cns) {
                setExaminations(examinations.copyWith(cns: cns));
              },
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'PULMO'),
              initialValue: examinations.pulmo,
              onChanged: (pulmo) {
                setExaminations(examinations.copyWith(pulmo: pulmo));
              },
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'SKIN'),
              initialValue: examinations.skin,
              onChanged: (skin) {
                setExaminations(examinations.copyWith(skin: skin));
              },
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'GI'),
              initialValue: examinations.gi,
              onChanged: (gi) {
                setExaminations(examinations.copyWith(gi: gi));
              },
              maxLines: 3,
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'GU'),
              initialValue: examinations.gu,
              onChanged: (gu) {
                setExaminations(examinations.copyWith(gu: gu));
              },
              maxLines: 3,
            ).pad(),
          ],
        );
      },
    ).pad();
  }
}

class VitalsMonitoringUI extends UI {
  const VitalsMonitoringUI({
    super.key,
    required this.id,
  });
  final MR id;

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
            ' bpm, & Temperature is '.text(),
            vitals.temperature.text(),
            ' F.'.text(),
          ],
        ).pad();
      },
      id: id,
    );
  }
}
