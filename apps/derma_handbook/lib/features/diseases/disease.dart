import '../../main.dart';
import '../settings/settings.dart';

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

@freezed
class Diseases with _$Diseases {
  const factory Diseases({
    @Default(<String, Disease>{}) final Map<String, Disease> diseases,
  }) = _Diseases;

  factory Diseases.fromJson(Map<String, dynamic> json) =>
      _$DiseasesFromJson(json);
}

final diseasesRM = DiseasesRM();

final class DiseasesRM extends Manager<Diseases> {
  @override
  final initialState = Diseases();
  void addDisease(Disease disease) => addDisease(disease);

  updateImageOfDisease(Uint8List image, Disease diseaseModel) {
    addDisease(diseaseModel.copyWith(image: image));
  }

  updateNameOfDisease(String name, Disease diseaseModel) {
    addDisease(diseaseModel.copyWith(name: name));
  }

  updateDescriptionsOfDisease(descriptions, Disease diseaseModel) {
    addDisease(diseaseModel.copyWith(descriptions: descriptions));
  }

  updateInstructionsOfDisease(instructions, Disease diseaseModel) {
    addDisease(diseaseModel.copyWith(instructions: instructions));
  }

  updateManagementsOfDisease(managements, Disease diseaseModel) {
    addDisease(diseaseModel.copyWith(managements: managements));
  }
}
