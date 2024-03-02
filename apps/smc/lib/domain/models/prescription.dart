part of 'models.dart';

@freezed
class Prescription with _$Prescription {
  const factory Prescription({
    required final String name,
    required final Medicine medicine,
    required final String dose,
    required final String instructions,
  }) = _Prescription;
  factory Prescription.fromJson(json) => _$PrescriptionFromJson(json);
  // factory Medicine.init() => Medicine(medicine: '');
}
