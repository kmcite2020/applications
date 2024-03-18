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
    @Default(8.0) final double borderRadius,
    @Default(8.0) final double padding,
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @MaterialColorConverter()
    @Default(Colors.grey)
    final MaterialColor materialColor,
  }) = _Settings;
  factory Settings.fromJson(json) => _$SettingsFromJson(json);
}
