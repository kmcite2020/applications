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
              subtitle: Column(
                children: [
                  TextFormField(
                    initialValue: battery.brandName,
                    onChanged: (brandName) {
                      batteriesRM(
                        battery.copyWith(
                          brandName: brandName,
                        ),
                      );
                    },
                  ),
                  TextFormField(
                    initialValue: battery.capacity,
                    onChanged: (capacity) {
                      batteriesRM(
                        battery.copyWith(
                          capacity: capacity,
                        ),
                      );
                    },
                  ),
                ],
              ),
              trailing: IconButton.filledTonal(
                onPressed: () {
                  batteriesRM.delete(battery.id);
                },
                icon: const Icon(Icons.delete_forever),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // batteriesRM(
          //   AddBatteryEvent(
          //     batteryToAdd: Battery.create(
          //       brandName: 'new',
          //     ),
          //   ),
          // );
          batteriesRM(
            Battery(
              id: randomID,
              brandName: 'new',
            ),
          );
        },
        child: const Text('Add'),
      ),
    );
  }
}
