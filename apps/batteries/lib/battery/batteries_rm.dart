import 'package:batteries/battery/battery.dart';
import 'package:batteries/main.dart';

final batteriesRM = BatteriesRM();

class BatteriesRM extends Complex<BatteryEvent, List<Battery>> {
  BatteriesRM() {
    register<AddBatteryEvent>(
      (event, update) => update(List.of(state)..add(event.batteryToAdd)),
    );
    register<RemoveBatteryEvent>(
      (event, update) => update(List.of(state)..remove(event.batteryToRemove)),
    );
    register<UpdateBatteryEvent>(
      (event, update) {
        final newBattery = event.newBattery;
        final index =
            state.indexWhere((battery) => battery == event.oldBattery);
        if (index != -1) {
          update(List<Battery>.from(state)..[index] = newBattery);
        }
      },
    );
  }
  @override
  final initialState = [];
}
