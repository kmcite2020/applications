// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_disease_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditModel _$EditModelFromJson(Map<String, dynamic> json) {
  return _EditModel.fromJson(json);
}

/// @nodoc
mixin _$EditModel {
  String get editId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get descriptions => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;
  List<String> get managements => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditModelCopyWith<EditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditModelCopyWith<$Res> {
  factory $EditModelCopyWith(EditModel value, $Res Function(EditModel) then) =
      _$EditModelCopyWithImpl<$Res, EditModel>;
  @useResult
  $Res call(
      {String editId,
      String name,
      List<String> descriptions,
      List<String> instructions,
      List<String> managements,
      @Uint8ListConverter() Uint8List? image});
}

/// @nodoc
class _$EditModelCopyWithImpl<$Res, $Val extends EditModel>
    implements $EditModelCopyWith<$Res> {
  _$EditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editId = null,
    Object? name = null,
    Object? descriptions = null,
    Object? instructions = null,
    Object? managements = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      editId: null == editId
          ? _value.editId
          : editId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      descriptions: null == descriptions
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      managements: null == managements
          ? _value.managements
          : managements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditModelImplCopyWith<$Res>
    implements $EditModelCopyWith<$Res> {
  factory _$$EditModelImplCopyWith(
          _$EditModelImpl value, $Res Function(_$EditModelImpl) then) =
      __$$EditModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String editId,
      String name,
      List<String> descriptions,
      List<String> instructions,
      List<String> managements,
      @Uint8ListConverter() Uint8List? image});
}

/// @nodoc
class __$$EditModelImplCopyWithImpl<$Res>
    extends _$EditModelCopyWithImpl<$Res, _$EditModelImpl>
    implements _$$EditModelImplCopyWith<$Res> {
  __$$EditModelImplCopyWithImpl(
      _$EditModelImpl _value, $Res Function(_$EditModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editId = null,
    Object? name = null,
    Object? descriptions = null,
    Object? instructions = null,
    Object? managements = null,
    Object? image = freezed,
  }) {
    return _then(_$EditModelImpl(
      editId: null == editId
          ? _value.editId
          : editId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      descriptions: null == descriptions
          ? _value._descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      managements: null == managements
          ? _value._managements
          : managements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditModelImpl implements _EditModel {
  const _$EditModelImpl(
      {this.editId = '<String>[]',
      this.name = '<String>[]',
      final List<String> descriptions = const <String>[],
      final List<String> instructions = const <String>[],
      final List<String> managements = const <String>[],
      @Uint8ListConverter() this.image})
      : _descriptions = descriptions,
        _instructions = instructions,
        _managements = managements;

  factory _$EditModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditModelImplFromJson(json);

  @override
  @JsonKey()
  final String editId;
  @override
  @JsonKey()
  final String name;
  final List<String> _descriptions;
  @override
  @JsonKey()
  List<String> get descriptions {
    if (_descriptions is EqualUnmodifiableListView) return _descriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_descriptions);
  }

  final List<String> _instructions;
  @override
  @JsonKey()
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  final List<String> _managements;
  @override
  @JsonKey()
  List<String> get managements {
    if (_managements is EqualUnmodifiableListView) return _managements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_managements);
  }

  @override
  @Uint8ListConverter()
  final Uint8List? image;

  @override
  String toString() {
    return 'EditModel(editId: $editId, name: $name, descriptions: $descriptions, instructions: $instructions, managements: $managements, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditModelImpl &&
            (identical(other.editId, editId) || other.editId == editId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._descriptions, _descriptions) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            const DeepCollectionEquality()
                .equals(other._managements, _managements) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      editId,
      name,
      const DeepCollectionEquality().hash(_descriptions),
      const DeepCollectionEquality().hash(_instructions),
      const DeepCollectionEquality().hash(_managements),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditModelImplCopyWith<_$EditModelImpl> get copyWith =>
      __$$EditModelImplCopyWithImpl<_$EditModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditModelImplToJson(
      this,
    );
  }
}

abstract class _EditModel implements EditModel {
  const factory _EditModel(
      {final String editId,
      final String name,
      final List<String> descriptions,
      final List<String> instructions,
      final List<String> managements,
      @Uint8ListConverter() final Uint8List? image}) = _$EditModelImpl;

  factory _EditModel.fromJson(Map<String, dynamic> json) =
      _$EditModelImpl.fromJson;

  @override
  String get editId;
  @override
  String get name;
  @override
  List<String> get descriptions;
  @override
  List<String> get instructions;
  @override
  List<String> get managements;
  @override
  @Uint8ListConverter()
  Uint8List? get image;
  @override
  @JsonKey(ignore: true)
  _$$EditModelImplCopyWith<_$EditModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
