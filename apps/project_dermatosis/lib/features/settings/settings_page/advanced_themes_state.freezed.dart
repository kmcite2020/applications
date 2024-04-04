// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_themes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvancedThemeModel _$AdvancedThemeModelFromJson(Map<String, dynamic> json) {
  return _AdvancedThemeModel.fromJson(json);
}

/// @nodoc
mixin _$AdvancedThemeModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  AdvancedColors get light => throw _privateConstructorUsedError;
  AdvancedColors get dark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvancedThemeModelCopyWith<AdvancedThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedThemeModelCopyWith<$Res> {
  factory $AdvancedThemeModelCopyWith(
          AdvancedThemeModel value, $Res Function(AdvancedThemeModel) then) =
      _$AdvancedThemeModelCopyWithImpl<$Res, AdvancedThemeModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      AdvancedColors light,
      AdvancedColors dark});

  $AdvancedColorsCopyWith<$Res> get light;
  $AdvancedColorsCopyWith<$Res> get dark;
}

/// @nodoc
class _$AdvancedThemeModelCopyWithImpl<$Res, $Val extends AdvancedThemeModel>
    implements $AdvancedThemeModelCopyWith<$Res> {
  _$AdvancedThemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as AdvancedColors,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as AdvancedColors,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdvancedColorsCopyWith<$Res> get light {
    return $AdvancedColorsCopyWith<$Res>(_value.light, (value) {
      return _then(_value.copyWith(light: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdvancedColorsCopyWith<$Res> get dark {
    return $AdvancedColorsCopyWith<$Res>(_value.dark, (value) {
      return _then(_value.copyWith(dark: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvancedThemeModelImplCopyWith<$Res>
    implements $AdvancedThemeModelCopyWith<$Res> {
  factory _$$AdvancedThemeModelImplCopyWith(_$AdvancedThemeModelImpl value,
          $Res Function(_$AdvancedThemeModelImpl) then) =
      __$$AdvancedThemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      AdvancedColors light,
      AdvancedColors dark});

  @override
  $AdvancedColorsCopyWith<$Res> get light;
  @override
  $AdvancedColorsCopyWith<$Res> get dark;
}

/// @nodoc
class __$$AdvancedThemeModelImplCopyWithImpl<$Res>
    extends _$AdvancedThemeModelCopyWithImpl<$Res, _$AdvancedThemeModelImpl>
    implements _$$AdvancedThemeModelImplCopyWith<$Res> {
  __$$AdvancedThemeModelImplCopyWithImpl(_$AdvancedThemeModelImpl _value,
      $Res Function(_$AdvancedThemeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_$AdvancedThemeModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as AdvancedColors,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as AdvancedColors,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedThemeModelImpl implements _AdvancedThemeModel {
  const _$AdvancedThemeModelImpl(
      {this.name = '',
      this.description = '',
      this.light = const AdvancedColors.light(),
      this.dark = const AdvancedColors.dark()});

  factory _$AdvancedThemeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedThemeModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final AdvancedColors light;
  @override
  @JsonKey()
  final AdvancedColors dark;

  @override
  String toString() {
    return 'AdvancedThemeModel(name: $name, description: $description, light: $light, dark: $dark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedThemeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.dark, dark) || other.dark == dark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, light, dark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedThemeModelImplCopyWith<_$AdvancedThemeModelImpl> get copyWith =>
      __$$AdvancedThemeModelImplCopyWithImpl<_$AdvancedThemeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedThemeModelImplToJson(
      this,
    );
  }
}

abstract class _AdvancedThemeModel implements AdvancedThemeModel {
  const factory _AdvancedThemeModel(
      {final String name,
      final String description,
      final AdvancedColors light,
      final AdvancedColors dark}) = _$AdvancedThemeModelImpl;

  factory _AdvancedThemeModel.fromJson(Map<String, dynamic> json) =
      _$AdvancedThemeModelImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  AdvancedColors get light;
  @override
  AdvancedColors get dark;
  @override
  @JsonKey(ignore: true)
  _$$AdvancedThemeModelImplCopyWith<_$AdvancedThemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdvancedColors _$AdvancedColorsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'light':
      return AdvancedColorsLight.fromJson(json);
    case 'dark':
      return AdvancedColorsDark.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AdvancedColors',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AdvancedColors {
  @MaterialColorConverter()
  MaterialColor get primary => throw _privateConstructorUsedError;
  @MaterialColorConverter()
  MaterialColor get secondary => throw _privateConstructorUsedError;
  @MaterialColorConverter()
  MaterialColor get background => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)
        light,
    required TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)
        dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        light,
    TResult? Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        light,
    TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvancedColorsLight value) light,
    required TResult Function(AdvancedColorsDark value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvancedColorsLight value)? light,
    TResult? Function(AdvancedColorsDark value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvancedColorsLight value)? light,
    TResult Function(AdvancedColorsDark value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvancedColorsCopyWith<AdvancedColors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedColorsCopyWith<$Res> {
  factory $AdvancedColorsCopyWith(
          AdvancedColors value, $Res Function(AdvancedColors) then) =
      _$AdvancedColorsCopyWithImpl<$Res, AdvancedColors>;
  @useResult
  $Res call(
      {@MaterialColorConverter() MaterialColor primary,
      @MaterialColorConverter() MaterialColor secondary,
      @MaterialColorConverter() MaterialColor background});
}

/// @nodoc
class _$AdvancedColorsCopyWithImpl<$Res, $Val extends AdvancedColors>
    implements $AdvancedColorsCopyWith<$Res> {
  _$AdvancedColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
    Object? background = null,
  }) {
    return _then(_value.copyWith(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvancedColorsLightImplCopyWith<$Res>
    implements $AdvancedColorsCopyWith<$Res> {
  factory _$$AdvancedColorsLightImplCopyWith(_$AdvancedColorsLightImpl value,
          $Res Function(_$AdvancedColorsLightImpl) then) =
      __$$AdvancedColorsLightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@MaterialColorConverter() MaterialColor primary,
      @MaterialColorConverter() MaterialColor secondary,
      @MaterialColorConverter() MaterialColor background});
}

/// @nodoc
class __$$AdvancedColorsLightImplCopyWithImpl<$Res>
    extends _$AdvancedColorsCopyWithImpl<$Res, _$AdvancedColorsLightImpl>
    implements _$$AdvancedColorsLightImplCopyWith<$Res> {
  __$$AdvancedColorsLightImplCopyWithImpl(_$AdvancedColorsLightImpl _value,
      $Res Function(_$AdvancedColorsLightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
    Object? background = null,
  }) {
    return _then(_$AdvancedColorsLightImpl(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedColorsLightImpl implements AdvancedColorsLight {
  const _$AdvancedColorsLightImpl(
      {@MaterialColorConverter() this.primary = Colors.blue,
      @MaterialColorConverter() this.secondary = Colors.blue,
      @MaterialColorConverter() this.background = Colors.blue,
      final String? $type})
      : $type = $type ?? 'light';

  factory _$AdvancedColorsLightImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedColorsLightImplFromJson(json);

  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor primary;
  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor secondary;
  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor background;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AdvancedColors.light(primary: $primary, secondary: $secondary, background: $background)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedColorsLightImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.background, background) ||
                other.background == background));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, primary, secondary, background);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedColorsLightImplCopyWith<_$AdvancedColorsLightImpl> get copyWith =>
      __$$AdvancedColorsLightImplCopyWithImpl<_$AdvancedColorsLightImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)
        light,
    required TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)
        dark,
  }) {
    return light(primary, secondary, background);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        light,
    TResult? Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        dark,
  }) {
    return light?.call(primary, secondary, background);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        light,
    TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(primary, secondary, background);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvancedColorsLight value) light,
    required TResult Function(AdvancedColorsDark value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvancedColorsLight value)? light,
    TResult? Function(AdvancedColorsDark value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvancedColorsLight value)? light,
    TResult Function(AdvancedColorsDark value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedColorsLightImplToJson(
      this,
    );
  }
}

abstract class AdvancedColorsLight implements AdvancedColors {
  const factory AdvancedColorsLight(
          {@MaterialColorConverter() final MaterialColor primary,
          @MaterialColorConverter() final MaterialColor secondary,
          @MaterialColorConverter() final MaterialColor background}) =
      _$AdvancedColorsLightImpl;

  factory AdvancedColorsLight.fromJson(Map<String, dynamic> json) =
      _$AdvancedColorsLightImpl.fromJson;

  @override
  @MaterialColorConverter()
  MaterialColor get primary;
  @override
  @MaterialColorConverter()
  MaterialColor get secondary;
  @override
  @MaterialColorConverter()
  MaterialColor get background;
  @override
  @JsonKey(ignore: true)
  _$$AdvancedColorsLightImplCopyWith<_$AdvancedColorsLightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdvancedColorsDarkImplCopyWith<$Res>
    implements $AdvancedColorsCopyWith<$Res> {
  factory _$$AdvancedColorsDarkImplCopyWith(_$AdvancedColorsDarkImpl value,
          $Res Function(_$AdvancedColorsDarkImpl) then) =
      __$$AdvancedColorsDarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@MaterialColorConverter() MaterialColor primary,
      @MaterialColorConverter() MaterialColor secondary,
      @MaterialColorConverter() MaterialColor background});
}

/// @nodoc
class __$$AdvancedColorsDarkImplCopyWithImpl<$Res>
    extends _$AdvancedColorsCopyWithImpl<$Res, _$AdvancedColorsDarkImpl>
    implements _$$AdvancedColorsDarkImplCopyWith<$Res> {
  __$$AdvancedColorsDarkImplCopyWithImpl(_$AdvancedColorsDarkImpl _value,
      $Res Function(_$AdvancedColorsDarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
    Object? background = null,
  }) {
    return _then(_$AdvancedColorsDarkImpl(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedColorsDarkImpl implements AdvancedColorsDark {
  const _$AdvancedColorsDarkImpl(
      {@MaterialColorConverter() this.primary = Colors.blue,
      @MaterialColorConverter() this.secondary = Colors.blue,
      @MaterialColorConverter() this.background = Colors.blue,
      final String? $type})
      : $type = $type ?? 'dark';

  factory _$AdvancedColorsDarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedColorsDarkImplFromJson(json);

  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor primary;
  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor secondary;
  @override
  @JsonKey()
  @MaterialColorConverter()
  final MaterialColor background;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AdvancedColors.dark(primary: $primary, secondary: $secondary, background: $background)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedColorsDarkImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.background, background) ||
                other.background == background));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, primary, secondary, background);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedColorsDarkImplCopyWith<_$AdvancedColorsDarkImpl> get copyWith =>
      __$$AdvancedColorsDarkImplCopyWithImpl<_$AdvancedColorsDarkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)
        light,
    required TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)
        dark,
  }) {
    return dark(primary, secondary, background);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        light,
    TResult? Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        dark,
  }) {
    return dark?.call(primary, secondary, background);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        light,
    TResult Function(
            @MaterialColorConverter() MaterialColor primary,
            @MaterialColorConverter() MaterialColor secondary,
            @MaterialColorConverter() MaterialColor background)?
        dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(primary, secondary, background);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvancedColorsLight value) light,
    required TResult Function(AdvancedColorsDark value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvancedColorsLight value)? light,
    TResult? Function(AdvancedColorsDark value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvancedColorsLight value)? light,
    TResult Function(AdvancedColorsDark value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedColorsDarkImplToJson(
      this,
    );
  }
}

abstract class AdvancedColorsDark implements AdvancedColors {
  const factory AdvancedColorsDark(
          {@MaterialColorConverter() final MaterialColor primary,
          @MaterialColorConverter() final MaterialColor secondary,
          @MaterialColorConverter() final MaterialColor background}) =
      _$AdvancedColorsDarkImpl;

  factory AdvancedColorsDark.fromJson(Map<String, dynamic> json) =
      _$AdvancedColorsDarkImpl.fromJson;

  @override
  @MaterialColorConverter()
  MaterialColor get primary;
  @override
  @MaterialColorConverter()
  MaterialColor get secondary;
  @override
  @MaterialColorConverter()
  MaterialColor get background;
  @override
  @JsonKey(ignore: true)
  _$$AdvancedColorsDarkImplCopyWith<_$AdvancedColorsDarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
