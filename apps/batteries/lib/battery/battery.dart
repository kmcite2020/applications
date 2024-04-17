// ignore_for_file: unused_element

import 'package:batteries/main.dart';

part 'battery.freezed.dart';
part 'battery.g.dart';

final batteriesRM = ComplexTable<Battery>(
  key: 'batteries',
  fromJson: Battery.fromJson,
);

@freezed
class Battery extends ID with _$Battery {
  const factory Battery({
    @Default('') String id,
    @Default('') String brandName,
    @Default('') String capacity,
    @Default('') String voltage,
    @Default('') String technologyType, // Li, NiCad, Sulfuric etc.
    @Default('') String price,
  }) = _Battery;
  factory Battery.fromJson(Map<String, dynamic> json) =>
      _$BatteryFromJson(json);
}
