import 'dart:convert';

import 'models.dart';

class PersonalizationsModel {
  final ThemeModeX themeModeX;
  final MaterialColorX colorX;
  final TransparencyX transparencyX;
  final BackgroundImageX backgroundImageX;
  final TextSizeX textSizeX;
  final BorderRadiusY borderRadiusX;
  final PaddingX paddingX;
  PersonalizationsModel({
    required this.themeModeX,
    required this.colorX,
    required this.transparencyX,
    required this.backgroundImageX,
    required this.textSizeX,
    required this.borderRadiusX,
    required this.paddingX,
  });

  static PersonalizationsModel get init => PersonalizationsModel(
        themeModeX: ThemeModeX.init,
        colorX: MaterialColorX.init,
        transparencyX: TransparencyX.init,
        backgroundImageX: BackgroundImageX.init,
        textSizeX: TextSizeX.init,
        paddingX: PaddingX.init,
        borderRadiusX: BorderRadiusY.init,
      );

  PersonalizationsModel copyWith({
    ThemeModeX? themeModeX,
    MaterialColorX? colorX,
    TransparencyX? transparencyX,
    BackgroundImageX? backgroundImageX,
    TextSizeX? textSizeX,
    BorderRadiusY? borderRadiusX,
    PaddingX? paddingX,
  }) {
    return PersonalizationsModel(
      themeModeX: themeModeX ?? this.themeModeX,
      colorX: colorX ?? this.colorX,
      transparencyX: transparencyX ?? this.transparencyX,
      backgroundImageX: backgroundImageX ?? this.backgroundImageX,
      textSizeX: textSizeX ?? this.textSizeX,
      borderRadiusX: borderRadiusX ?? this.borderRadiusX,
      paddingX: paddingX ?? this.paddingX,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeModeX': themeModeX.toMap(),
      'colorX': colorX.toMap(),
      'transparencyX': transparencyX.toMap(),
      'backgroundImageX': backgroundImageX.toMap(),
      'textSizeX': textSizeX.toMap(),
      'borderRadiusX': borderRadiusX.toMap(),
      'paddingX': paddingX.toMap(),
    };
  }

  factory PersonalizationsModel.fromMap(Map<String, dynamic> map) {
    return PersonalizationsModel(
      themeModeX: ThemeModeX.fromMap(map['themeModeX'] as Map<String, dynamic>),
      colorX: MaterialColorX.fromMap(map['colorX'] as Map<String, dynamic>),
      transparencyX: TransparencyX.fromMap(map['transparencyX'] as Map<String, dynamic>),
      backgroundImageX: BackgroundImageX.fromMap(map['backgroundImageX'] as Map<String, dynamic>),
      textSizeX: TextSizeX.fromMap(map['textSizeX'] as Map<String, dynamic>),
      borderRadiusX: BorderRadiusY.fromMap(map['borderRadiusX'] as Map<String, dynamic>),
      paddingX: PaddingX.fromMap(map['paddingX'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonalizationsModel.fromJson(String source) => PersonalizationsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PersonalizationsModel(themeModeX: $themeModeX, colorX: $colorX, transparencyX: $transparencyX, backgroundImageX: $backgroundImageX, textSizeX: $textSizeX, borderRadiusX: $borderRadiusX, paddingX: $paddingX)';
  }

  @override
  bool operator ==(covariant PersonalizationsModel other) {
    if (identical(this, other)) return true;

    return other.themeModeX == themeModeX &&
        other.colorX == colorX &&
        other.transparencyX == transparencyX &&
        other.backgroundImageX == backgroundImageX &&
        other.textSizeX == textSizeX &&
        other.borderRadiusX == borderRadiusX &&
        other.paddingX == paddingX;
  }

  @override
  int get hashCode {
    return themeModeX.hashCode ^ colorX.hashCode ^ transparencyX.hashCode ^ backgroundImageX.hashCode ^ textSizeX.hashCode ^ borderRadiusX.hashCode ^ paddingX.hashCode;
  }
}
