import 'package:prescription_er/core.dart';
import 'prescription.dart';

final patientsRM = ComplexTable<Patient>(
  key: 'patients',
  fromJson: Patient.fromJson,
);
