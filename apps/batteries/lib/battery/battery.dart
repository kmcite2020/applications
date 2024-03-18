// ignore_for_file: unused_element

import 'package:batteries/main.dart';

part 'battery.freezed.dart';
part 'battery.g.dart';

final batteries = Batteries().call;

@freezed
class Batteries with _$Batteries {
  const factory Batteries({
    @Default(<String, Battery>{}) final Map<String, Battery> cache,
    final Battery? removedBattery,
  }) = _Batteries;
  const Batteries._();
  Batteries add(Battery battery) => copyWith(
        cache: Map.of(cache)..[battery.id] = battery,
      );
  Batteries restore() => copyWith(
        cache: Map.of(cache)..[removedBattery!.id] = removedBattery!,
      );
  Batteries remove(Battery battery) => copyWith(
        cache: Map.of(cache)..remove(battery.id),
        removedBattery: battery,
      );
  Batteries removeAll() => copyWith(cache: {});

  static final iRM = RM.inject(
    () => Batteries(),
    persist: () => PersistState(
      key: 'batteries',
      toJson: (s) => jsonEncode(s.toJson()),
      fromJson: (json) => Batteries.fromJson(jsonDecode(json)),
    ),
  );
  Batteries call([Batteries? batteries]) {
    if (batteries != null) iRM.state = batteries;
    return iRM.state;
  }

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

  static Battery? fromID(String batteryID) => batteries().cache[batteryID];

  factory Battery.fromJson(Map<String, dynamic> json) =>
      _$BatteryFromJson(json);
}
