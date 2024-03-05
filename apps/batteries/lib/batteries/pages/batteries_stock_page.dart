import 'package:batteries/batteries/pages/battery_details_page.dart';
import 'package:batteries/battery/batteries_rm.dart';
import 'package:batteries/battery/battery.dart';
import 'package:batteries/main.dart';

class BatteriesStockPage extends UI {
  const BatteriesStockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Batteries Stocks'.text(),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 0),
        itemCount: batteriesRM().cache.length,
        itemBuilder: (context, index) {
          final batteryEntry = batteriesRM().cache.entries.elementAt(index);
          final battery = batteryEntry.value;
          return ListTile(
            title: battery.brandName.text(),
            subtitle: Column(
              children: [
                'Capacity: ${battery.capacity}AH'.text(),
                'Voltage: ${battery.voltage}V'.text(),
                'Price: ${battery.price}PKR'.text(),
              ],
            ),
            // Add more information from the Battery object as needed
            onTap: () {
              RM.navigate.to(
                BatteryDetailsPage(batteryID: battery.id),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final batteryToAdd = await RM.navigate.toDialog<Battery>(
            AddBatteryDialog(),
          );
          if (batteryToAdd != null) {
            batteriesRM(
              AddBatteryEvent(batteryToAdd: batteryToAdd),
            );
          }
        },
        label: 'Add Battery'.text(),
        icon: Icon(Icons.battery_charging_full),
      ),
    );
  }
}

class AddBatteryDialog extends UI {
  static final batteryToAddRM = Simple(Battery.create());
  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            'BRAND'.text(),
            TextFormField(
              initialValue: batteryToAddRM().brandName,
              onChanged: (value) {
                batteryToAddRM(
                  batteryToAddRM().copyWith(brandName: value),
                );
              },
            ).pad(),
            'CAPACITY'.text(),
            TextFormField(
              initialValue: batteryToAddRM().capacity,
              onChanged: (value) {
                batteryToAddRM(
                  batteryToAddRM().copyWith(capacity: value),
                );
              },
            ).pad(),
            'VOLTAGE'.text(),
            TextFormField(
              initialValue: batteryToAddRM().voltage,
              onChanged: (value) {
                batteryToAddRM(
                  batteryToAddRM().copyWith(voltage: value),
                );
              },
            ).pad(),
            'TECHNOLOGY'.text(),
            TextFormField(
              initialValue: batteryToAddRM().technologyType,
              onChanged: (value) {
                batteryToAddRM(
                  batteryToAddRM().copyWith(technologyType: value),
                );
              },
            ).pad(),
            'PRICE'.text(),
            TextFormField(
              initialValue: batteryToAddRM().price,
              onChanged: (value) {
                batteryToAddRM(
                  batteryToAddRM().copyWith(price: value),
                );
              },
            ).pad(),
            ElevatedButton(
              onPressed: () {
                final batteryToAdd = batteryToAddRM().copyWith(id: randomID);
                RM.navigate.back(batteryToAdd);
              },
              child: 'Add Battery to Stock'.text(),
            ),
            batteryToAddRM.text().pad()
          ],
        ),
      ),
    );
  }
}
