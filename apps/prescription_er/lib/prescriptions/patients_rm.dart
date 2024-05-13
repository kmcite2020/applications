import 'package:prescription_er/main.dart';

import 'prescription.dart';

final patientsRM = ComplexTable<Patient>(
  'patients',
  Patient.fromJson,
);
