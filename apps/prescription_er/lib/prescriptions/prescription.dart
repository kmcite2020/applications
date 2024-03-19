import 'package:prescription_er/main.dart';
part 'prescription.freezed.dart';
part 'prescription.g.dart';

typedef MR = String;

@freezed
class Patient with _$Patient {
  const factory Patient({
    required final MR id,
    required final String name,
    required final CNIC cnic,
    required final Duration age,
    required final Gender gender,
    required final bool isAttended,
    required final DateTime arrivalAt,
    required final Address address,
    required final PatientStatus patientStatus,
    required final Classification classification,
    required final Triage triage,
    required final List<Complaint> presentingComplaints,
    required final Vitals vitals,
    required final Examinations examinations,
    required final List<Investigation> investigations,
    required final List<Management> managements,
    required final String provisionalDiagnosis,
    required final String diagnosis,
  }) = _Patient;
  factory Patient.fromJson(json) => _$PatientFromJson(json);
  factory Patient.init() => Patient(
        id: randomID,
        name: '',
        cnic: CNIC.fromJson(json),
        age: Duration(),
        gender: Gender.male,
        isAttended: false,
        arrivalAt: DateTime.now(),
        address: Address.fromJson(json),
        patientStatus: PatientStatus.emergency,
        classification: Classification.medical,
        triage: Triage.green,
        presentingComplaints: [],
        vitals: Vitals.fromJson(json),
        examinations: Examinations.fromJson(json),
        investigations: [],
        managements: [],
        provisionalDiagnosis: '',
        diagnosis: '',
      );

  static List<Patient> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => Patient.fromJson(e)).toList();
  }

  static String toListJson(List<Patient> patients) {
    final List result = patients.map((e) => e.toJson()).toList();
    return json.encode(result);
  }
}

enum PatientStatus {
  emergency,
  opd,
  discharged,
  admitted;
}

@freezed
class Examinations with _$Examinations {
  const factory Examinations({
    required final String eye,
    required final String ent,
    required final String cvs,
    required final String cns,
    required final String pulmo,
    required final String skin,
    required final String gi,
    required final String gu,
  }) = _Examinations;
  factory Examinations.fromJson(json) => _$ExaminationsFromJson(json);
  // factory Medicine.init() => Medicine(medicine: '');
}

@freezed
class Complaint with _$Complaint {
  const factory Complaint({
    required final String complaint,
    required final String history,
    required final Duration duration,
  }) = _Complaint;
  factory Complaint.fromJson(json) => _$ComplaintFromJson(json);
  // factory Medicine.init() => Medicine(medicine: '');
}

enum Classification { rta, medical, surgical, other, mlc }

enum Gender {
  male,
  female;

  @override
  toString() => 'Gender: ${name.capitalize}';
}

@freezed
class CNIC with _$CNIC {
  const factory CNIC({
    required final String a,
    required final String b,
    required final String c,
  }) = _CNIC;
  factory CNIC.fromJson(json) => _$CNICFromJson(json);
  // factory Medicine.init() => Medicine(medicine: '');
}

@freezed
class Address with _$Address {
  const factory Address({
    required final String country,
    required final String province,
    required final String city,
    required final String area,
  }) = _Address;
  factory Address.fromJson(json) => _$AddressFromJson(json);
  // factory Medicine.init() => Medicine(medicine: '');
}

@freezed
class Investigation with _$Investigation {
  const factory Investigation({
    required final String name,
    required final String value,
    required final DateTime time,
  }) = _Investigation;
  factory Investigation.fromJson(json) => _$InvestigationFromJson(json);
  // factory Medicine.init() => Medicine(medicine: '');
}

@freezed
class Management with _$Management {
  const factory Management({
    required final String description,
    required final DateTime time,
  }) = _Management;
  factory Management.fromJson(json) => _$ManagementFromJson(json);
  // factory Medicine.init() => Medicine(medicine: '');
}

@freezed
class Outcome with _$Outcome {
  const factory Outcome({
    required final OutcomeStatus outcomeStatus,
    required final String description,
  }) = _Outcome;
  factory Outcome.fromJson(json) => _$OutcomeFromJson(json);
  // factory Medicine.init() => Medicine(medicine: '');
}

enum OutcomeStatus {
  death,
  referal,
  admission,
  discharged,
  pending;

  toMap() => index;
  static OutcomeStatus fromMap(map) => OutcomeStatus.values[map];
}

enum Triage {
  green(Colors.green),
  yellow(Colors.yellow),
  red(Colors.red),
  white(Colors.white);

  const Triage(this.color);
  final Color color;
  @override
  toString() => name.capitalize;
}

@freezed
class Vitals with _$Vitals {
  const factory Vitals({
    required final int systolic,
    required final int diastolic,
    required final int pulse,
    required final int oxygen,
    required final double temperature,
  }) = _Vitals;
  factory Vitals.fromJson(json) => _$VitalsFromJson(json);
}
