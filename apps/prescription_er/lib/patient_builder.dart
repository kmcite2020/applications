import 'package:prescription_er/main.dart';
import 'package:prescription_er/prescriptions/patients_rm.dart';
import 'package:prescription_er/prescriptions/prescription.dart';

class PatientBuilder extends UI {
  final String id;
  final Widget Function(Patient patient) builder;

  PatientBuilder({
    required this.id,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final patient = patientsRM.tryGet(id);
    if (patient == null) return CircularProgressIndicator().center();
    return builder(patient);
  }
}
