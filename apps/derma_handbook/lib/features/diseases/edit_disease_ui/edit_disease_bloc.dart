import 'package:derma_handbook/main.dart';

part 'edit_disease_bloc.g.dart';
part 'edit_disease_bloc.freezed.dart';

class EditDiseaseBloc {
  final editModelRM = RM.inject(() => EditModel());
  EditModel get editModel => editModelRM.state;
  void setEditModel(EditModel editModel) => editModelRM.state = editModel;

  /// Image
  Uint8List? get image => editModel.image;
  set image(Uint8List? image) => setEditModel(editModel.copyWith(image: image));

  /// Name
  String get name => editModel.name;
  void onNameChanged(String name) =>
      setEditModel(editModel.copyWith(name: name));

  /// Descriptions
  List<String> get descriptions => editModel.descriptions;
  set descriptions(List<String> descriptions) =>
      setEditModel(editModel.copyWith(descriptions: descriptions));

  void addDescription(String description) {
    descriptions = [...descriptions, description];
  }

  void removeDescription(String description) {
    descriptions = [...descriptions]..remove(description);
  }

  /// Instructions
  List<String> get instructions => editModel.instructions;
  set instructions(List<String> instructions) =>
      setEditModel(editModel.copyWith(instructions: instructions));

  void addInstruction(String instruction) {
    instructions = [...instructions, instruction];
  }

  void removeInstruction(String instruction) {
    instructions = [...instructions]..remove(instruction);
  }

  /// Managements
  List<String> get managements => editModel.managements;
  set managements(List<String> managements) =>
      setEditModel(editModel.copyWith(managements: managements));

  void addManagement(String management) {
    managements = [...managements, management];
  }

  void removeManagement(String management) {
    managements = [...managements]..remove(management);
  }
}

@freezed
class EditModel with _$EditModel {
  const factory EditModel({
    @Default('<String>[]') final String editId,
    @Default('<String>[]') final String name,
    @Default(<String>[]) final List<String> descriptions,
    @Default(<String>[]) final List<String> instructions,
    @Default(<String>[]) final List<String> managements,
    @Uint8ListConverter() final Uint8List? image,
  }) = _EditModel;

  factory EditModel.fromJson(Map<String, dynamic> json) =>
      _$EditModelFromJson(json);
}
