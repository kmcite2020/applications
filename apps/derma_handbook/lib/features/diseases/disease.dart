import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../main.dart';

part 'disease.g.dart';

@Collection()
@JsonSerializable()
@CopyWith()
class Disease {
  @Id()
  final int id;
  final String name;
  final List<byte>? image;
  final DateTime? createdAt;
  final List<String> descriptions;
  final List<String> instructions;
  final List<String> managements;
  const Disease({
    required this.id,
    this.name = '',
    this.image,
    this.createdAt,
    this.descriptions = const [],
    this.instructions = const [],
    this.managements = const [],
  });
  void update() => isar.write((isar) => isar.diseases.put(this));
  toJson() => _$DiseaseToJson(this);
  static Disease fromJson(json) => _$DiseaseFromJson(json);
}

class DiseasesBloc {
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
