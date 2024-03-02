part of '../domain.dart';

@freezed
class Settings with _$Settings {
  const Settings._();
  const factory Settings({
    required final ThemeMode themeMode,
    required final double padding,
    required final double borderRadius,
    required final double elevation,
    required final double buttonHeight,
    required final double displacementOfAppBarFromTopEdgeOfTheScreen,
    required final String? font,
    required final String hospitalName,
    required final String userName,
    required final bool editingHospitalName,
    required final bool colorVisibility,
  }) = _Settings;

  factory Settings.init() => Settings(
        themeMode: ThemeMode.system,
        padding: 8,
        borderRadius: 8,
        elevation: 2,
        buttonHeight: 10,
        displacementOfAppBarFromTopEdgeOfTheScreen: 30,
        font: null,
        hospitalName: 'hospitalName',
        userName: 'userName',
        editingHospitalName: false,
        colorVisibility: false,
      );

  factory Settings.fromJson(json) => _$SettingsFromJson(json);

  // Id id = 0;
  // double padding = 8;
  // double elevation = 6;
  // double buttonHeight = 8;
  // double borderRadius = 8;
  // double displacementOfAppBarFromTopEdgeOfTheScreen = 30;
  // String? font;
  // bool areColorsVisible = false;
  // bool isWaiting = false;

  // @enumerated
  // ThemeMode themeMode = ThemeMode.system;

  // int? materialColorValue;
  // @ignore
  // MaterialColor get materialColor {
  //   return Colors.primaries[materialColorValue ?? 0];
  // }

  // set materialColor(MaterialColor color) {
  //   materialColorValue = Colors.primaries.indexOf(color);
  // }

  // String hospitalName = 'NKMC';
  // String user = 'DAM';
  // bool isHospitalNameEditing = false;
}
