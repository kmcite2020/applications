import 'package:batteries/battery/battery.dart';
import 'package:batteries/main.dart';

class BatteryUI extends UI {
  const BatteryUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: batteries().cache.length.text(),
      ),
      body: ListView(
        children: List.generate(
          batteries().cache.length,
          (index) {
            final battery = batteries().cache.values.toList()[index];
            return ListTile(
              key: Key(battery.id),
              title: battery.text(),
              subtitle: Column(
                children: [
                  TextFormField(
                    initialValue: battery.brandName,
                    onChanged: (brandName) {
                      batteries(
                        batteries().add(
                          battery.copyWith(
                            brandName: brandName,
                          ),
                        ),
                      );
                    },
                  ),
                  TextFormField(
                    initialValue: battery.capacity,
                    onChanged: (capacity) {
                      batteries(
                        batteries().add(
                          battery.copyWith(
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
                  batteries(
                    batteries().remove(battery),
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
          // batteriesRM(
          //   AddBatteryEvent(
          //     batteryToAdd: Battery.create(
          //       brandName: 'new',
          //     ),
          //   ),
          // );
          batteries(
            batteries().add(
              Battery.create(
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
