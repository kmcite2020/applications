import '../main.dart';

final ThemeModeRM themeModeRM = ThemeModeRM();

class ThemeModeRM extends Complex<ThemeMode, ThemeMode> {
  ThemeModeRM() {
    register<ThemeMode>((event) => state = event);
  }

  @override
  ThemeMode get initialState => ThemeMode.system;
}
