import 'package:batteries/main.dart';

part 'battery.freezed.dart';
part 'battery.g.dart';

@freezed
class Battery with _$Battery {
  const factory Battery({
    @Default('') String id,
    @Default('') String name,
  }) = _Battery;

  factory Battery.fromJson(Map<String, dynamic> json) =>
      _$BatteryFromJson(json);
}

@freezed
class BatteryEvent with _$BatteryEvent {
  const factory BatteryEvent.add({
    required Battery batteryToAdd,
  }) = AddBatteryEvent;
  const factory BatteryEvent.remove({
    required Battery batteryToRemove,
  }) = RemoveBatteryEvent;
  const factory BatteryEvent.update({
    required Battery oldBattery,
    required Battery newBattery,
  }) = UpdateBatteryEvent;

  factory BatteryEvent.fromJson(Map<String, dynamic> json) =>
      _$BatteryEventFromJson(json);
}
