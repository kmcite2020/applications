import 'package:batteries/batteries/pages/battery_details_page.dart';
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
        itemCount: batteriesRM().length,
        itemBuilder: (context, index) {
          final battery = batteriesRM().elementAt(index);
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
              (batteryToAdd),
            );
          }
        },
        label: 'Add Battery'.text(),
        icon: Icon(Icons.battery_charging_full),
      ),
    );
  }
}

Battery get batteryToAdd => batteryToAddRM.state;
final batteryToAddRM = RM.inject(() => Battery());
void setBatteryToAdd(Battery battery) => batteryToAddRM.state = battery;

class AddBatteryDialog extends UI {
  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            'BRAND'.text(),
            TextFormField(
              initialValue: batteryToAdd.brandName,
              onChanged: (value) {
                setBatteryToAdd(
                  batteryToAdd.copyWith(brandName: value),
                );
              },
            ).pad(),
            'CAPACITY'.text(),
            TextFormField(
              initialValue: batteryToAdd.capacity,
              onChanged: (value) {
                setBatteryToAdd(
                  batteryToAdd.copyWith(capacity: value),
                );
              },
            ).pad(),
            'VOLTAGE'.text(),
            TextFormField(
              initialValue: batteryToAdd.voltage,
              onChanged: (value) {
                setBatteryToAdd(
                  batteryToAdd.copyWith(voltage: value),
                );
              },
            ).pad(),
            'TECHNOLOGY'.text(),
            TextFormField(
              initialValue: batteryToAdd.technologyType,
              onChanged: (value) {
                setBatteryToAdd(
                  batteryToAdd.copyWith(technologyType: value),
                );
              },
            ).pad(),
            'PRICE'.text(),
            TextFormField(
              initialValue: batteryToAdd.price,
              onChanged: (value) {
                setBatteryToAdd(
                  batteryToAdd.copyWith(price: value),
                );
              },
            ).pad(),
            ElevatedButton(
              onPressed: () {
                setBatteryToAdd(batteryToAdd.copyWith(id: randomID));
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
