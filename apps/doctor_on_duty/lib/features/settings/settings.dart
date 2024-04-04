// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doctor_on_duty/features/settings/settings_bloc.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @MaterialColorConverter() required final MaterialColor materialColor,
    required final ThemeMode themeMode,
    required final Font font,
    required final double padding,
    required final double borderRadius,
  }) = _Settings;
  factory Settings.fromJson(json) => _$SettingsFromJson(json);
  factory Settings.init() {
    return Settings(
      themeMode: ThemeMode.system,
      materialColor: Colors.amber,
      font: Font.lotion,
      padding: 8,
      borderRadius: 8,
    );
  }
}
