// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_disease_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EditModelCWProxy {
  EditModel editId(int editId);

  EditModel name(String name);

  EditModel descriptions(List<String> descriptions);

  EditModel instructions(List<String> instructions);

  EditModel managements(List<String> managements);

  EditModel image(List<int>? image);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EditModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EditModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EditModel call({
    int? editId,
    String? name,
    List<String>? descriptions,
    List<String>? instructions,
    List<String>? managements,
    List<int>? image,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEditModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEditModel.copyWith.fieldName(...)`
class _$EditModelCWProxyImpl implements _$EditModelCWProxy {
  const _$EditModelCWProxyImpl(this._value);

  final EditModel _value;

  @override
  EditModel editId(int editId) => this(editId: editId);

  @override
  EditModel name(String name) => this(name: name);

  @override
  EditModel descriptions(List<String> descriptions) =>
      this(descriptions: descriptions);

  @override
  EditModel instructions(List<String> instructions) =>
      this(instructions: instructions);

  @override
  EditModel managements(List<String> managements) =>
      this(managements: managements);

  @override
  EditModel image(List<int>? image) => this(image: image);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EditModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EditModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EditModel call({
    Object? editId = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? descriptions = const $CopyWithPlaceholder(),
    Object? instructions = const $CopyWithPlaceholder(),
    Object? managements = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
  }) {
    return EditModel(
      editId: editId == const $CopyWithPlaceholder() || editId == null
          ? _value.editId
          // ignore: cast_nullable_to_non_nullable
          : editId as int,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      descriptions:
          descriptions == const $CopyWithPlaceholder() || descriptions == null
              ? _value.descriptions
              // ignore: cast_nullable_to_non_nullable
              : descriptions as List<String>,
      instructions:
          instructions == const $CopyWithPlaceholder() || instructions == null
              ? _value.instructions
              // ignore: cast_nullable_to_non_nullable
              : instructions as List<String>,
      managements:
          managements == const $CopyWithPlaceholder() || managements == null
              ? _value.managements
              // ignore: cast_nullable_to_non_nullable
              : managements as List<String>,
      image: image == const $CopyWithPlaceholder()
          ? _value.image
          // ignore: cast_nullable_to_non_nullable
          : image as List<int>?,
    );
  }
}

extension $EditModelCopyWith on EditModel {
  /// Returns a callable class that can be used as follows: `instanceOfEditModel.copyWith(...)` or like so:`instanceOfEditModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EditModelCWProxy get copyWith => _$EditModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditModel _$EditModelFromJson(Map<String, dynamic> json) => EditModel(
      editId: json['editId'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      descriptions: (json['descriptions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      instructions: (json['instructions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      managements: (json['managements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      image: (json['image'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$EditModelToJson(EditModel instance) => <String, dynamic>{
      'editId': instance.editId,
      'name': instance.name,
      'descriptions': instance.descriptions,
      'instructions': instance.instructions,
      'managements': instance.managements,
      'image': instance.image,
    };
