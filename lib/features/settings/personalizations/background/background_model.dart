import 'dart:convert';

import '../models/models.dart';
import 'background_bloc.dart';

class BackgroundModel {
  final bool isVisible;
  final PersonalizeMode mode;
  final MaterialColorX colorX;
  final BackgroundImageX backgroundImageX;
  BackgroundModel({
    required this.isVisible,
    required this.mode,
    required this.colorX,
    required this.backgroundImageX,
  });
  static BackgroundModel get init => BackgroundModel(isVisible: false, mode: PersonalizeMode.color, colorX: MaterialColorX.init, backgroundImageX: BackgroundImageX.init);
  BackgroundModel copyWith({
    bool? isVisible,
    PersonalizeMode? mode,
    MaterialColorX? colorX,
    BackgroundImageX? backgroundImageX,
  }) {
    return BackgroundModel(
      isVisible: isVisible ?? this.isVisible,
      mode: mode ?? this.mode,
      colorX: colorX ?? this.colorX,
      backgroundImageX: backgroundImageX ?? this.backgroundImageX,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isVisible': isVisible,
      'mode': mode.toMap(),
      'colorX': colorX.toMap(),
      'backgroundImageX': backgroundImageX.toMap(),
    };
  }

  factory BackgroundModel.fromMap(Map<String, dynamic> map) {
    return BackgroundModel(
      isVisible: map['isVisible'] as bool,
      mode: PersonalizeMode.fromMap(map['mode'] as Map<String, dynamic>),
      colorX: MaterialColorX.fromMap(map['colorX'] as Map<String, dynamic>),
      backgroundImageX: BackgroundImageX.fromMap(map['backgroundImageX'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory BackgroundModel.fromJson(String source) => BackgroundModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BackgroungModel(isVisible: $isVisible, mode: $mode, colorX: $colorX, backgroundImageX: $backgroundImageX)';
  }

  @override
  bool operator ==(covariant BackgroundModel other) {
    if (identical(this, other)) return true;

    return other.isVisible == isVisible && other.mode == mode && other.colorX == colorX && other.backgroundImageX == backgroundImageX;
  }

  @override
  int get hashCode {
    return isVisible.hashCode ^ mode.hashCode ^ colorX.hashCode ^ backgroundImageX.hashCode;
  }
}
