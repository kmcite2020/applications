import '../../../main.dart';

class PatientBuilder extends UI {
  const PatientBuilder({
    super.key,
    required this.patientID,
    required this.builder,
  });
  final String patientID;
  final Widget Function(Patient patient) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      Patient.fromID(patientID),
    );
  }
}
