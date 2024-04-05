import 'package:ideal_store/main.dart';

final settingsRM = SettingsRM();

class SettingsRM extends Manager<Settings> {
  final bool autoDispose = false;
  final initialState = Settings();
  set materialColor(_) => state = state.copyWith(materialColor: _);
  set isAddCustomerVisible(_) {
    state = state.copyWith(
      isAddCustomerVisible: _,
    );
  }

  set themeMode(_) => state = state.copyWith(themeMode: _);
  set borderRadius(_) => state = state.copyWith(borderRadius: _);
  set font(_) => state = state.copyWith(font: _);
  set padding(_) => state = state.copyWith(padding: _);
}
