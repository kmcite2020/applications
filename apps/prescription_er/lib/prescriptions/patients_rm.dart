import 'package:prescription_er/main.dart';
import 'prescription.dart';

final patientsRM = ComplexTable<Patient>(
  key: 'patients',
  fromJson: Patient.fromJson,
);
