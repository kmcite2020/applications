import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'advanced_themes_state.freezed.dart';
part 'advanced_themes_state.g.dart';

@freezed
class AdvancedThemeModel with _$AdvancedThemeModel {
  const factory AdvancedThemeModel({
    @Default('') final String name,
    @Default('') final String description,
    @Default(AdvancedColors.light()) final AdvancedColors light,
    @Default(AdvancedColors.dark()) final AdvancedColors dark,
  }) = _AdvancedThemeModel;

  factory AdvancedThemeModel.fromJson(json) =>
      _$AdvancedThemeModelFromJson(json);
}

@freezed
class AdvancedColors with _$AdvancedColors {
  const factory AdvancedColors.light({
    @Default(Colors.blue) @MaterialColorConverter() final MaterialColor primary,
    @Default(Colors.blue)
    @MaterialColorConverter()
    final MaterialColor secondary,
    @Default(Colors.blue)
    @MaterialColorConverter()
    final MaterialColor background,
  }) = AdvancedColorsLight;
  const factory AdvancedColors.dark({
    @MaterialColorConverter() @Default(Colors.blue) final MaterialColor primary,
    @MaterialColorConverter()
    @Default(Colors.blue)
    final MaterialColor secondary,
    @MaterialColorConverter()
    @Default(Colors.blue)
    final MaterialColor background,
  }) = AdvancedColorsDark;

  factory AdvancedColors.fromJson(json) => _$AdvancedColorsFromJson(json);
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
