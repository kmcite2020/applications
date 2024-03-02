part of 'models.dart';

@freezed
class Medicine with _$Medicine {
  const factory Medicine({
    required final String medicine,
  }) = _Medicine;
  factory Medicine.fromJson(json) => _$MedicineFromJson(json);
  factory Medicine.init() => Medicine(medicine: '');
}
