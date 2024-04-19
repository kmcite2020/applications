import 'package:prescription_er/main.dart';

part 'prescription.freezed.dart';
part 'prescription.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient({
    required final DateTime arrivalAt,
    @Default("") final String id,
    @Default("") final String name,
    @Default("") final String fatherName,
    @Default(CNIC()) final CNIC cnic,
    @Default(Duration.zero) final Duration age,
    @Default(Address()) final Address address,
    @Default(Gender.male) final Gender gender,
    @Default(PatientStatus.emergency) final PatientStatus patientStatus,
    @Default(Classification.medical) final Classification classification,
    @Default(Triage.green) final Triage triage,
    @Default(false) final bool isAttended,
    @Default(PresentingComplaints()) final PresentingComplaints presentingComplaints,
    @Default(Vitals()) final Vitals vitals,
    @Default(Examinations()) final Examinations examinations,
    @Default([]) final List<Investigation> investigations,
    @Default([]) final List<Management> managements,
    @Default("") final String provisionalDiagnosis,
    @Default("") final String diagnosis,
  }) = _Patient;

  factory Patient.fromJson(json) => _$PatientFromJson(json);
}

@freezed
class PresentingComplaints with _$PresentingComplaints {
  const factory PresentingComplaints({
    @Default(<String, Complaint>{}) Map<String, Complaint> cache,
  }) = _PresentingComplaints;

  factory PresentingComplaints.fromJson(Map<String, dynamic> json) =>
      _$PresentingComplaintsFromJson(json);
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
    @Default("") final String eye,
    @Default("") final String ent,
    @Default("") final String cvs,
    @Default("") final String cns,
    @Default("") final String pulmo,
    @Default("") final String skin,
    @Default("") final String gi,
    @Default("") final String gu,
  }) = _Examinations;

  factory Examinations.fromJson(json) => _$ExaminationsFromJson(json);
}

@freezed
class Complaint with _$Complaint {
  const factory Complaint({
    @Default('') final String id,
    @Default('') final String complaint,
    @Default('') final String history,
    @Default(Duration.zero) final Duration duration,
  }) = _Complaint;

  factory Complaint.fromJson(json) => _$ComplaintFromJson(json);
}

enum Classification { rta, medical, surgical, other, mlc }

enum Gender {
  male,
  female;

  @override
  toString() => 'Gender: ${name.toUpperCase()}';
}

@freezed
class CNIC with _$CNIC {
  const factory CNIC({
    @Default('00000') final String a,
    @Default('0000002') final String b,
    @Default('1') final String c,
  }) = _CNIC;

  factory CNIC.fromJson(json) => _$CNICFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @Default('PK') final String country,
    @Default('KPK') final String province,
    @Default('SWABI') final String city,
    @Default('SHAH MANSOOR') final String area,
  }) = _Address;

  factory Address.fromJson(json) => _$AddressFromJson(json);
}

@freezed
class Investigation with _$Investigation {
  const factory Investigation({
    @Default('') final String name,
    @Default('') final String value,
    required final DateTime time,
  }) = _Investigation;

  factory Investigation.fromJson(json) => _$InvestigationFromJson(json);
}

@freezed
class Management with _$Management {
  const factory Management({
    @Default('') final String description,
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
}

enum Triage {
  green(Colors.green),
  yellow(Colors.yellow),
  red(Colors.red),
  white(Colors.white);

  const Triage(this.color);

  final Color color;

  @override
  toString() => name.toUpperCase();
}

@freezed
class Vitals with _$Vitals {
  const factory Vitals({
    @Default(120) final int systolic,
    @Default(80) final int diastolic,
    @Default(72) final int pulse,
    @Default(98) final int oxygen,
    @Default(98.4) final double temperature,
  }) = _Vitals;

  factory Vitals.fromJson(json) => _$VitalsFromJson(json);
}
