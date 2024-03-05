import 'package:batteries/battery/battery.dart';
import 'package:batteries/main.dart';

final batteriesRM = BatteriesRM();

class BatteriesRM extends Complex<BatteryEvent, Batteries> {
  BatteriesRM() {
    register<AddBatteryEvent>(
      (event, update) => update(
        state.copyWith(
          cache: Map.of(state.cache)
            ..[event.batteryToAdd.id] = event.batteryToAdd,
        ),
      ),
    );
    register<RemoveBatteryEvent>(
      (event, update) => update(
        state.copyWith(
          removedBattery: event.batteryToRemove,
          cache: Map.of(state.cache)..remove(event.batteryToRemove.id),
        ),
      ),
    );

    register<UpdateBatteryEvent>(
      (event, update) => update(
        state.copyWith(
          cache: Map.of(state.cache)..[event.oldBattery.id] = event.newBattery,
        ),
      ),
    );
    register<RestoreBatteryEvent>(
      (event, update) => update(
        state.copyWith(
          cache: Map.of(state.cache)
            ..[event.batteryToRestore.id] = event.batteryToRestore,
        ),
      ),
    );
  }
  @override
  final initialState = const Batteries();
  @override
  final persistor = Persistor(
    key: 'batteries',
    toJson: (state) => state.toJson(),
    fromJson: Batteries.fromJson,
  );
}
