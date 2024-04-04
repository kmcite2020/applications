// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'edit_disease_bloc.g.dart';

class EditDiseaseBloc {
  final editModelRM = RM.inject(() => EditModel());
  EditModel get editModel => editModelRM.state;
  void setEditModel(EditModel editModel) => editModelRM.state = editModel;

  /// Image
  List<int>? get image => editModel.image;
  set image(List<int>? image) => setEditModel(editModel.copyWith(image: image));

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

@CopyWith()
@JsonSerializable()
class EditModel {
  final int editId;
  final String name;
  final List<String> descriptions;
  final List<String> instructions;
  final List<String> managements;
  final List<byte>? image;
  EditModel({
    this.editId = -1,
    this.name = '',
    this.descriptions = const [],
    this.instructions = const [],
    this.managements = const [],
    this.image,
  });
  toJson() => _$EditModelToJson(this);
  static EditModel fromJson(json) => _$EditModelFromJson(json);
}
