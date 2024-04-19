import '../../main.dart';

part 'disease.freezed.dart';
part 'disease.g.dart';

@freezed
class Disease with _$Disease {
  const factory Disease({
    @Default('') final String id,
    @Default('') final String name,
    @Uint8ListConverter() final Uint8List? image,
    final DateTime? createdAt,
    @Default(<String>[]) final List<String> descriptions,
    @Default(<String>[]) final List<String> instructions,
    @Default(<String>[]) final List<String> managements,
  }) = _Disease;

  factory Disease.fromJson(Map<String, dynamic> json) =>
      _$DiseaseFromJson(json);
}

final diseasesRM = ComplexTable(
  'diseases',
  fromJson: Disease.fromJson,
);

updateImageOfDisease(Uint8List image, Disease state) =>
    diseasesRM(state.copyWith(image: image));
updateNameOfDisease(String name, Disease state) =>
    diseasesRM(state.copyWith(name: name));
updateDescriptionsOfDisease(List<String> descriptions, Disease state) =>
    diseasesRM(state.copyWith(descriptions: descriptions));
updateInstructionsOfDisease(List<String> instructions, Disease state) =>
    diseasesRM(state.copyWith(instructions: instructions));
updateManagementsOfDisease(List<String> managements, Disease state) =>
    diseasesRM(state.copyWith(managements: managements));
