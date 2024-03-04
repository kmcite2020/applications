import 'package:batteries/battery/batteries_rm.dart';
import 'package:batteries/battery/battery.dart';
import 'package:batteries/main.dart';

class BatteryUI extends UI {
  const BatteryUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: batteriesRM().length.text(),
      ),
      body: ListView(
        children: List.generate(
          batteriesRM().length,
          (index) {
            final battery = batteriesRM()[index];
            return ListTile(
              key: Key(battery.id),
              title: battery.text(),
              subtitle: TextFormField(
                initialValue: battery.name,
                onChanged: (name) {
                  batteriesRM(
                    UpdateBatteryEvent(
                      oldBattery: battery,
                      newBattery: Battery(
                        id: battery.id,
                        name: name,
                      ),
                    ),
                  );
                },
              ),
              trailing: IconButton.filledTonal(
                onPressed: () {
                  batteriesRM(
                    RemoveBatteryEvent(batteryToRemove: battery),
                  );
                },
                icon: const Icon(Icons.delete_forever),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          batteriesRM(
            AddBatteryEvent(
              batteryToAdd: Battery(
                id: randomID,
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
