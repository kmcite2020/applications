import 'dart:convert';

import '../../main.dart';

part 'home_treatment_plan.dart';

part 'medicine.dart';

part 'admin/officer.dart';
part 'models.freezed.dart';
part 'models.g.dart';
part 'patient.dart';
part 'prescription.dart';

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];
  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

@freezed
class Settings with _$Settings {
  const factory Settings({
    required final double borderRadius,
    required final double padding,
    required final ThemeMode themeMode,
    @MaterialColorConverter() required final MaterialColor materialColor,
  }) = _Settings;
  factory Settings.fromJson(json) => _$SettingsFromJson(json);
  factory Settings.init() => Settings(
        borderRadius: 0,
        padding: 0,
        themeMode: ThemeMode.system,
        materialColor: Colors.deepOrange,
      );
}
