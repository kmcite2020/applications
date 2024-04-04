import '../../../../main.dart';

const textScaleFactorTitle = 2.0;

class ReadingModeUI extends UI {
  const ReadingModeUI({super.key, required this.id});
  final String id;
  @override
  Widget build(context) {
    return PatientBuilder(
      patientID: id,
      builder: (patient) => ListView(
        children: [
          AgeUI(age: patient.age),
          'ID'
              .text(textScaleFactor: textScaleFactorTitle)
              .borderizeGradiently(),
          patient.id.text().pad(),
          'NAME'
              .text(textScaleFactor: textScaleFactorTitle)
              .borderizeGradiently(),
          patient.name.text().pad(),
          'COMPLAINTS'
              .text(textScaleFactor: textScaleFactorTitle)
              .borderizeGradiently(),
          ...patient.complaintNotes.map((e) => e.text()),
          'DIAGNOSIS'
              .text(
                textScaleFactor: textScaleFactorTitle,
              )
              .borderizeGradiently(),
          ...patient.diagnositicNotes.map((e) => e.text()),
          'ER MANAGEMENT'
              .text(
                textScaleFactor: textScaleFactorTitle,
              )
              .borderizeGradiently(),
          ...patient.firstAidNotes.map((e) => e.text()), // Wrap(
          'HOME MANAGEMENT'
              .text(
                textScaleFactor: textScaleFactorTitle,
              )
              .borderizeGradiently(),
          ...patient.furtherPlans.map((e) => e.text()),
        ],
      ),
    );
  }
}
