// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Medicine extends Equatable {
  final String medicine;
  const Medicine({
    required this.medicine,
  });

  Medicine copyWith({
    String? medicine,
  }) {
    return Medicine(
      medicine: medicine ?? this.medicine,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'medicine': medicine,
    };
  }

  factory Medicine.fromMap(Map<String, dynamic> map) {
    return Medicine(
      medicine: map['medicine'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Medicine.fromJson(String source) => Medicine.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [medicine];
}

class Prescription extends Equatable {
  final String prescriptionId;
  final Patient patient;
  final List<Medicine> medicines;
  final DateTime dateOfPrescription;
  final Diagnosis diagnosis;
  final Doctor doctor;
  const Prescription({
    required this.prescriptionId,
    required this.patient,
    required this.medicines,
    required this.dateOfPrescription,
    required this.diagnosis,
    required this.doctor,
  });

  static List<Prescription> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => Prescription.fromJson(e)).toList();
  }

  static String toListJson(List<Prescription> users) {
    final List result = users.map((e) => e.toJson()).toList();
    return json.encode(result);
  }

  Prescription copyWith({
    String? prescriptionId,
    Patient? patient,
    List<Medicine>? medicines,
    DateTime? dateOfPrescription,
    Diagnosis? diagnosis,
    Doctor? doctor,
  }) {
    return Prescription(
      prescriptionId: prescriptionId ?? this.prescriptionId,
      patient: patient ?? this.patient,
      medicines: medicines ?? this.medicines,
      dateOfPrescription: dateOfPrescription ?? this.dateOfPrescription,
      diagnosis: diagnosis ?? this.diagnosis,
      doctor: doctor ?? this.doctor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prescriptionId': prescriptionId,
      'patient': patient.toMap(),
      'medicines': medicines.map((x) => x.toMap()).toList(),
      'dateOfPrescription': dateOfPrescription.millisecondsSinceEpoch,
      'diagnosis': diagnosis.toMap(),
      'doctor': doctor.toMap(),
    };
  }

  factory Prescription.fromMap(Map<String, dynamic> map) {
    return Prescription(
      prescriptionId: map['prescriptionId'] as String,
      patient: Patient.fromMap(map['patient'] as Map<String, dynamic>),
      medicines: List<Medicine>.from(
        (map['medicines']).map<Medicine>(
          (x) => Medicine.fromMap(x as Map<String, dynamic>),
        ),
      ),
      dateOfPrescription: DateTime.fromMillisecondsSinceEpoch(map['dateOfPrescription'] as int),
      diagnosis: Diagnosis.fromMap(map['diagnosis'] as Map<String, dynamic>),
      doctor: Doctor.fromMap(map['doctor'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Prescription.fromJson(String source) => Prescription.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      prescriptionId,
      patient,
      medicines,
      dateOfPrescription,
      diagnosis,
      doctor,
    ];
  }
}

class Doctor extends Equatable {
  final String doctorId;
  final String name;
  final String department;
  final String hospital;
  const Doctor({
    required this.doctorId,
    required this.name,
    required this.department,
    required this.hospital,
  });

  Doctor copyWith({
    String? doctorId,
    String? name,
    String? department,
    String? hospital,
  }) {
    return Doctor(
      doctorId: doctorId ?? this.doctorId,
      name: name ?? this.name,
      department: department ?? this.department,
      hospital: hospital ?? this.hospital,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doctorId': doctorId,
      'name': name,
      'department': department,
      'hospital': hospital,
    };
  }

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      doctorId: map['doctorId'] as String,
      name: map['name'] as String,
      department: map['department'] as String,
      hospital: map['hospital'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Doctor.fromJson(String source) => Doctor.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [doctorId, name, department, hospital];
}

class Diagnosis extends Equatable {
  final String diagnosisId;
  final String diagnosis;
  final String description;

  const Diagnosis({
    required this.diagnosisId,
    required this.diagnosis,
    required this.description,
  });

  Diagnosis copyWith({
    String? diagnosisId,
    String? diagnosis,
    String? description,
  }) {
    return Diagnosis(
      diagnosisId: diagnosisId ?? this.diagnosisId,
      diagnosis: diagnosis ?? this.diagnosis,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosisId': diagnosisId,
      'diagnosis': diagnosis,
      'description': description,
    };
  }

  factory Diagnosis.fromMap(Map<String, dynamic> map) {
    return Diagnosis(
      diagnosisId: map['diagnosisId'] as String,
      diagnosis: map['diagnosis'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Diagnosis.fromJson(String source) => Diagnosis.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [diagnosisId, diagnosis, description];
}

class Patient extends Equatable {
  final String id;
  final String name;
  const Patient({
    required this.id,
    required this.name,
  });
  static List<Patient> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => Patient.fromJson(e)).toList();
  }

  static String toListJson(List<Patient> users) {
    final List result = users.map((e) => e.toJson()).toList();
    return json.encode(result);
  }

  @override
  List<Object> get props => [id, name];

  Patient copyWith({
    String? id,
    String? name,
  }) {
    return Patient(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Patient.fromMap(Map<String, dynamic> map) {
    return Patient(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Patient.fromJson(String source) => Patient.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
