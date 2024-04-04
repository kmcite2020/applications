import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final ThemeModeRM themeModeRM = ThemeModeRM();

class ThemeModeRM {
  final themeModeRM = RM.inject(() => ThemeMode.system);
  Injected<ThemeMode> call() => themeModeRM;
}
