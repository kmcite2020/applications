import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manager/manager.dart';
import 'package:manager/model.dart';
import 'package:roster_system/departments/departments.dart';
import 'package:roster_system/doctors_management/doctors.dart';
import 'package:roster_system/settings/settings.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(Settings()) final Settings settings,
    @Default(<String, Doctor>{}) final Map<String, Doctor> doctors,
    @Default(<String, Department>{}) final Map<String, Department> departments,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

final appStateRM = AppStateRM();

class AppStateRM extends Manager<AppState> {
  @override
  AppState get initialState => const AppState();

  @override
  Persistor<AppState>? get persistor {
    return Persistor(
      key: 'app_state',
      toJson: (state) => state.toJson(),
      fromJson: AppState.fromJson,
    );
  }
}
