// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:apps/features/settings/personalizations/default.dart';
import 'package:flutter/material.dart';

class BorderRadiusY {
  final double borderRadius;
  BorderRadiusY({
    required this.borderRadius,
  });

  static BorderRadiusY get init => BorderRadiusY(borderRadius: 8);

  BorderRadiusY copyWith({
    double? borderRadius,
  }) {
    return BorderRadiusY(
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'borderRadius': borderRadius,
    };
  }

  factory BorderRadiusY.fromMap(Map<String, dynamic> map) {
    return BorderRadiusY(
      borderRadius: map['borderRadius'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory BorderRadiusY.fromJson(String source) => BorderRadiusY.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BorderRadiusY(borderRadius: $borderRadius)';

  @override
  bool operator ==(covariant BorderRadiusY other) {
    if (identical(this, other)) return true;

    return other.borderRadius == borderRadius;
  }

  @override
  int get hashCode => borderRadius.hashCode;
}

class PaddingX {
  final double padding;
  PaddingX({
    required this.padding,
  });

  static PaddingX get init => PaddingX(padding: 8);

  PaddingX copyWith({
    double? padding,
  }) {
    return PaddingX(
      padding: padding ?? this.padding,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'padding': padding,
    };
  }

  factory PaddingX.fromMap(Map<String, dynamic> map) {
    return PaddingX(
      padding: map['padding'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaddingX.fromJson(String source) => PaddingX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PaddingX(padding: $padding)';

  @override
  bool operator ==(covariant PaddingX other) {
    if (identical(this, other)) return true;

    return other.padding == padding;
  }

  @override
  int get hashCode => padding.hashCode;
}

class TextSizeX {
  final double textSize;

  static TextSizeX get init => TextSizeX(textSize: 1.4);
  TextSizeX({
    required this.textSize,
  });

  TextSizeX copyWith({
    double? textSize,
  }) {
    return TextSizeX(
      textSize: textSize ?? this.textSize,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textSize': textSize,
    };
  }

  factory TextSizeX.fromMap(Map<String, dynamic> map) {
    return TextSizeX(
      textSize: map['textSize'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory TextSizeX.fromJson(String source) => TextSizeX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TextSizeX(textSize: $textSize)';

  @override
  bool operator ==(covariant TextSizeX other) {
    if (identical(this, other)) return true;

    return other.textSize == textSize;
  }

  @override
  int get hashCode => textSize.hashCode;
}

class BackgroundImageX {
  final String image;
  BackgroundImageX({
    required this.image,
  });

  BackgroundImageX copyWith({
    String? image,
  }) {
    return BackgroundImageX(
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
    };
  }

  factory BackgroundImageX.fromMap(Map<String, dynamic> map) {
    return BackgroundImageX(
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BackgroundImageX.fromJson(String source) => BackgroundImageX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BackgroundImageX(image: $image)';

  @override
  bool operator ==(covariant BackgroundImageX other) {
    if (identical(this, other)) return true;

    return other.image == image;
  }

  @override
  int get hashCode => image.hashCode;
  static get init => BackgroundImageX(image: defaultImage);
}

class ThemeModeX {
  final ThemeMode themeMode;

  static ThemeModeX get init => ThemeModeX(themeMode: ThemeMode.system);
  ThemeModeX({
    required this.themeMode,
  });

  ThemeModeX copyWith({
    ThemeMode? themeMode,
  }) {
    return ThemeModeX(
      themeMode: themeMode ?? this.themeMode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeMode': ThemeMode.values.indexOf(themeMode),
    };
  }

  factory ThemeModeX.fromMap(Map<String, dynamic> map) {
    return ThemeModeX(
      themeMode: ThemeMode.values[map['themeMode']],
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeModeX.fromJson(String source) => ThemeModeX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ThemeModeX(themeMode: $themeMode)';

  @override
  bool operator ==(covariant ThemeModeX other) {
    if (identical(this, other)) return true;

    return other.themeMode == themeMode;
  }

  @override
  int get hashCode => themeMode.hashCode;
}

class MaterialColorX {
  final MaterialColor color;

  static MaterialColorX get init => MaterialColorX(color: Colors.indigo);
  MaterialColorX({
    required this.color,
  });

  MaterialColorX copyWith({
    MaterialColor? color,
  }) {
    return MaterialColorX(
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': Colors.primaries.indexOf(color),
    };
  }

  factory MaterialColorX.fromMap(Map<String, dynamic> map) {
    return MaterialColorX(
      color: Colors.primaries[map['color']],
    );
  }

  String toJson() => json.encode(toMap());

  factory MaterialColorX.fromJson(String source) => MaterialColorX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MaterialColorX(color: $color)';

  @override
  bool operator ==(covariant MaterialColorX other) {
    if (identical(this, other)) return true;

    return other.color == color;
  }

  @override
  int get hashCode => color.hashCode;
}

class TransparencyX {
  double transparency;

  static TransparencyX init = TransparencyX(transparency: 0.2);
  TransparencyX({
    required this.transparency,
  });

  TransparencyX copyWith({
    double? transparency,
  }) {
    return TransparencyX(
      transparency: transparency ?? this.transparency,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transparency': transparency,
    };
  }

  factory TransparencyX.fromMap(Map<String, dynamic> map) {
    return TransparencyX(
      transparency: map['transparency'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory TransparencyX.fromJson(String source) => TransparencyX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TransparencyX(transparency: $transparency)';

  @override
  bool operator ==(covariant TransparencyX other) {
    if (identical(this, other)) return true;

    return other.transparency == transparency;
  }

  @override
  int get hashCode => transparency.hashCode;
}
