part of '../presentation.dart';

final settingsBloc = SettingsBloc();

class SettingsBloc {
  final settingsRM = RM.inject(
    () => Settings.init(),
  );

  Settings get state => settingsRM.state;

  void update(Settings Function(Settings state) value) {
    settingsRM.state = value(state);
  }

  double get getButtonHeight => state.buttonHeight;
  setButtonHeight(value) =>
      update((state) => state.copyWith(buttonHeight: value));

  ThemeMode get getThemeMode => state.themeMode;
  void setThemeMode(value) =>
      update((state) => state.copyWith(themeMode: value));

  double get getPadding => state.padding;
  void setPadding(value) => update((state) => state.copyWith(padding: value));

  double get getElevation => state.elevation;
  void setElevation(value) =>
      update((state) => state.copyWith(elevation: value));

  double get getBorderRadius => state.borderRadius;
  void setBorderRadius(value) =>
      update((state) => state.copyWith(borderRadius: value));
  MaterialColor get getMaterialColor => Colors.amber;
  // state.materialColor;
  void setMaterialColor(MaterialColor value) => update((state) => state);

  String? get getFont => state.font;
  void setFont(value) => update((state) => state.copyWith(buttonHeight: value));

  bool get getColorsVisibility => state.colorVisibility;
  void setColorsVisibility(value) =>
      update((state) => state.copyWith(colorVisibility: value));

  String get getHospitalName => state.hospitalName;
  void setHospitalName(value) =>
      update((state) => state.copyWith(hospitalName: value));
  String get getUser => state.userName;
  void setUserName(value) => update((state) => state.copyWith(userName: value));

  bool get getEditingHospitalName => state.editingHospitalName;
  void setHospitalNameEditing(value) =>
      update((state) => state.copyWith(editingHospitalName: value));
}
