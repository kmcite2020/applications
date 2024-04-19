import 'package:ideal_store/main.dart';

final settingsRM = SettingsRM(Settings());

class SettingsRM extends Simple<Settings> {
  final bool autoDispose = false;
  SettingsRM(super.initialState);
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
