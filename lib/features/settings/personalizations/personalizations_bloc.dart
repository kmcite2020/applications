// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'models/models.dart';
import 'models/personalizations_model.dart';

class PersonalizationsBloc {
  final personalizationsModel = RM.inject<PersonalizationsModel>(
    () => PersonalizationsModel.init,
    persist: () => PersistState(
      key: 'Personalizations',
      toJson: (s) => s.toJson(),
      fromJson: (json) => PersonalizationsModel.fromJson(json),
      // throttleDelay: 100,
    ),
  );

  /// UI PARAM
  final _isHidden = true.inj();

  MaterialColor get color => model.colorX.color;
  bool get isHidden => _isHidden.state;
  void toggleIsHidden() => _isHidden.toggle();

  /// PARAMS
  double get padding => 8;
  PersonalizationsModel get model => personalizationsModel.state;
  set model(PersonalizationsModel value) => personalizationsModel.state = value;

  double get textSize => model.textSizeX.textSize;
  set textSize(double value) => model = model.copyWith(textSizeX: TextSizeX(textSize: value));

  ThemeMode get themeMode => model.themeModeX.themeMode;
  set themeMode(ThemeMode value) => model = model.copyWith(themeModeX: ThemeModeX(themeMode: value));

  bool get isColor => true;

  /// model = model.copyWith();
}

final PersonalizationsBloc personalizationsBloc = PersonalizationsBloc();
