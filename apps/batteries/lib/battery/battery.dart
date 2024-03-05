// ignore_for_file: unused_element

import 'package:batteries/battery/batteries_rm.dart';
import 'package:batteries/main.dart';

part 'battery.freezed.dart';
part 'battery.g.dart';

@freezed
class Batteries with _$Batteries {
  const factory Batteries({
    @Default(<String, Battery>{}) final Map<String, Battery> cache,
    final Battery? removedBattery,
  }) = _Batteries;

  factory Batteries.fromJson(Map<String, dynamic> json) =>
      _$BatteriesFromJson(json);
}

@freezed
class Battery with _$Battery {
  const factory Battery.raw({
    required String id,
    required String brandName,
    required String capacity,
    required String voltage,
    required String technologyType, // Li, NiCad, Sulfuric etc.
    required String price,
  }) = _Battery;

  factory Battery.create({
    String brandName = '',
    String capacity = '',
    String voltage = '',
    String technologyType = '', // Li, NiCad, Sulfuric etc.
    String price = '',
  }) {
    return Battery.raw(
      id: randomID,
      brandName: brandName,
      capacity: capacity,
      voltage: voltage,
      technologyType: technologyType,
      price: price,
    );
  }

  static Battery? fromID(String batteryID) => batteriesRM().cache[batteryID];

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
  const factory BatteryEvent.restore({
    required Battery batteryToRestore,
  }) = RestoreBatteryEvent;
  const factory BatteryEvent.addToCart({
    required Battery battery,
  }) = AddToCartBatteryEvent;
  const factory BatteryEvent.removeFromCart({
    required Battery battery,
  }) = RemoveFromCartBatteryEvent;
  const factory BatteryEvent.update({
    required Battery oldBattery,
    required Battery newBattery,
  }) = UpdateBatteryEvent;

  factory BatteryEvent.fromJson(Map<String, dynamic> json) =>
      _$BatteryEventFromJson(json);
}
