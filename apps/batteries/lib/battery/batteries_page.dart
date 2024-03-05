import 'package:batteries/battery/batteries_rm.dart';
import 'package:batteries/battery/battery.dart';
import 'package:batteries/main.dart';

class BatteryUI extends UI {
  const BatteryUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: batteriesRM().cache.length.text(),
      ),
      body: ListView(
        children: List.generate(
          batteriesRM().cache.length,
          (index) {
            final battery = batteriesRM().cache.values.toList()[index];
            return ListTile(
              key: Key(battery.id),
              title: battery.text(),
              subtitle: Column(
                children: [
                  TextFormField(
                    initialValue: battery.brandName,
                    onChanged: (brandName) {
                      batteriesRM(
                        UpdateBatteryEvent(
                          oldBattery: battery,
                          newBattery: battery.copyWith(
                            brandName: brandName,
                          ),
                        ),
                      );
                    },
                  ),
                  TextFormField(
                    initialValue: battery.capacity,
                    onChanged: (capacity) {
                      batteriesRM(
                        UpdateBatteryEvent(
                          oldBattery: battery,
                          newBattery: battery.copyWith(
                            capacity: capacity,
                          ),
                        ),
                      );
                    },
                  ),
                ],
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
              batteryToAdd: Battery.create(
                brandName: 'new',
              ),
            ),
          );
        },
        child: const Text('Add'),
      ),
    );
  }
}
