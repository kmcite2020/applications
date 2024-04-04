import 'package:ideal_store/main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final settingsRM = SettingsRM();

class SettingsRM {
  final settingsRM = RM.inject(
    () => Settings(),
    persist: () => PersistState(
      key: 'settings',
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
      toJson: (s) => jsonEncode(s.toJson()),
    ),
  );
  Settings call([Settings? _settings]) =>
      _settings != null ? settingsRM.state = _settings : settingsRM.state;
}

final materialColorRM = MaterialColorRM();

class MaterialColorRM {
  MaterialColor call([
    MaterialColor? _value,
  ]) =>
      _value != null
          ? settingsRM(
              settingsRM().copyWith(materialColor: _value),
            ).materialColor
          : settingsRM().materialColor;
}

final isAddCustomerVisibleRM = IsAddCustomerVisibleRM();

class IsAddCustomerVisibleRM {
  bool call([bool? _value]) => _value != null
      ? settingsRM(
          settingsRM().copyWith(
            isAddCustomerVisible: _value,
          ),
        ).isAddCustomerVisible
      : settingsRM().isAddCustomerVisible;
}

final ThemeModeRM themeModeRM = ThemeModeRM();

class ThemeModeRM {
  ThemeMode call([ThemeMode? themeMode]) => themeMode != null
      ? settingsRM(
          settingsRM().copyWith(
            themeMode: themeMode,
          ),
        ).themeMode
      : settingsRM().themeMode;
}

final borderRadiusRM = BorderRadiusRM();

class BorderRadiusRM {
  double call([double? borderRadius]) => borderRadius != null
      ? settingsRM(
          settingsRM().copyWith(
            borderRadius: borderRadius,
          ),
        ).borderRadius
      : settingsRM().borderRadius;
}

final fontRM = FontRM();

class FontRM {
  String call([String? font]) => font != null
      ? settingsRM(
          settingsRM().copyWith(
            font: font,
          ),
        ).font
      : settingsRM().font;
}

final paddingRM = PaddingRM();

class PaddingRM {
  double call([double? padding]) => padding != null
      ? settingsRM(
          settingsRM().copyWith(
            padding: padding,
          ),
        ).padding
      : settingsRM().padding;
}
