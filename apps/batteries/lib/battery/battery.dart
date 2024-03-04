import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BatteryUI extends StatelessWidget {
  const BatteryUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: context.watch<BatteriesRM>().state.length,
        itemBuilder: (x, i) {
          final battery = context.watch<BatteriesRM>()()[i];
          return ListTile(
            title: Text(battery.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<BatteriesRM>().add(
                AddBatteryEvent(
                  battery: Battery(
                    name: 'new',
                  ),
                ),
              );
        },
        child: const Text('Add'),
      ),
    );
  }
}

class Battery {
  Battery({
    required this.name,
  });

  final String name;
}

class BatteryEvent {}

class AddBatteryEvent extends BatteryEvent {
  AddBatteryEvent({required this.battery});

  final Battery battery;
}

class RemoveBatteryEvent extends BatteryEvent {
  RemoveBatteryEvent({required this.battery});

  final Battery battery;
}

class BatteriesRM extends Bloc<BatteryEvent, List<Battery>> {
  BatteriesRM() : super([]) {
    on<AddBatteryEvent>(
      (event, emit) => emit(List.of(state)..add(event.battery)),
    );
    on<RemoveBatteryEvent>(
      (event, emit) => emit(List.of(state)..remove(event.battery)),
    );
  }
  List<Battery> call() => state;
}
