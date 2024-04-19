// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disease.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Disease _$DiseaseFromJson(Map<String, dynamic> json) {
  return _Disease.fromJson(json);
}

/// @nodoc
mixin _$Disease {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get image => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<String> get descriptions => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;
  List<String> get managements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiseaseCopyWith<Disease> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiseaseCopyWith<$Res> {
  factory $DiseaseCopyWith(Disease value, $Res Function(Disease) then) =
      _$DiseaseCopyWithImpl<$Res, Disease>;
  @useResult
  $Res call(
      {String id,
      String name,
      @Uint8ListConverter() Uint8List? image,
      DateTime? createdAt,
      List<String> descriptions,
      List<String> instructions,
      List<String> managements});
}

/// @nodoc
class _$DiseaseCopyWithImpl<$Res, $Val extends Disease>
    implements $DiseaseCopyWith<$Res> {
  _$DiseaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? descriptions = null,
    Object? instructions = null,
    Object? managements = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiseaseImplCopyWith<$Res> implements $DiseaseCopyWith<$Res> {
  factory _$$DiseaseImplCopyWith(
          _$DiseaseImpl value, $Res Function(_$DiseaseImpl) then) =
      __$$DiseaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @Uint8ListConverter() Uint8List? image,
      DateTime? createdAt,
      List<String> descriptions,
      List<String> instructions,
      List<String> managements});
}

/// @nodoc
class __$$DiseaseImplCopyWithImpl<$Res>
    extends _$DiseaseCopyWithImpl<$Res, _$DiseaseImpl>
    implements _$$DiseaseImplCopyWith<$Res> {
  __$$DiseaseImplCopyWithImpl(
      _$DiseaseImpl _value, $Res Function(_$DiseaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? descriptions = null,
    Object? instructions = null,
    Object? managements = null,
  }) {
    return _then(_$DiseaseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiseaseImpl with DiagnosticableTreeMixin implements _Disease {
  const _$DiseaseImpl(
      {this.id = '',
      this.name = '',
      @Uint8ListConverter() this.image,
      this.createdAt,
      final List<String> descriptions = const <String>[],
      final List<String> instructions = const <String>[],
      final List<String> managements = const <String>[]})
      : _descriptions = descriptions,
        _instructions = instructions,
        _managements = managements;

  factory _$DiseaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiseaseImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @Uint8ListConverter()
  final Uint8List? image;
  @override
  final DateTime? createdAt;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Disease(id: $id, name: $name, image: $image, createdAt: $createdAt, descriptions: $descriptions, instructions: $instructions, managements: $managements)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Disease'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('descriptions', descriptions))
      ..add(DiagnosticsProperty('instructions', instructions))
      ..add(DiagnosticsProperty('managements', managements));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiseaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._descriptions, _descriptions) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            const DeepCollectionEquality()
                .equals(other._managements, _managements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(image),
      createdAt,
      const DeepCollectionEquality().hash(_descriptions),
      const DeepCollectionEquality().hash(_instructions),
      const DeepCollectionEquality().hash(_managements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiseaseImplCopyWith<_$DiseaseImpl> get copyWith =>
      __$$DiseaseImplCopyWithImpl<_$DiseaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiseaseImplToJson(
      this,
    );
  }
}

abstract class _Disease implements Disease {
  const factory _Disease(
      {final String id,
      final String name,
      @Uint8ListConverter() final Uint8List? image,
      final DateTime? createdAt,
      final List<String> descriptions,
      final List<String> instructions,
      final List<String> managements}) = _$DiseaseImpl;

  factory _Disease.fromJson(Map<String, dynamic> json) = _$DiseaseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @Uint8ListConverter()
  Uint8List? get image;
  @override
  DateTime? get createdAt;
  @override
  List<String> get descriptions;
  @override
  List<String> get instructions;
  @override
  List<String> get managements;
  @override
  @JsonKey(ignore: true)
  _$$DiseaseImplCopyWith<_$DiseaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
