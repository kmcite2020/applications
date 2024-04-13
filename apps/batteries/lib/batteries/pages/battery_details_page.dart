import 'package:batteries/battery/battery.dart';
import 'package:batteries/main.dart';
import 'package:manager/manager.dart';

final deletedBatteryRM = Simple<Battery?>(null);

class BatteryDetailsPage extends UI {
  const BatteryDetailsPage({super.key, required this.batteryID});

  final String batteryID;

  @override
  Widget build(BuildContext context) {
    final battery = batteriesRM.tryGet(batteryID);
    if (battery != null) {
      return Scaffold(
        appBar: AppBar(
          title: battery.brandName.text(),
          actions: [
            IconButton(
              onPressed: () {
                deletedBatteryRM.state = batteriesRM.delete(battery);
              },
              icon: Icon(Icons.delete_forever),
            ).pad(),
          ],
        ),
        body: ListView(
          children: [
            battery.capacity.text(textScaleFactor: 3).pad(),
            battery.voltage.text(textScaleFactor: 3).pad(),
            battery.technologyType.text(textScaleFactor: 3).pad(),
            battery.price.text(textScaleFactor: 3).pad(),
          ],
        ),
      );
    } else {
      final removedBattery = deletedBatteryRM();

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            'Battery is deleted from the Main Storage'
                .text(textScaleFactor: 4)
                .pad(),
            'if this is by mistake restore the battery using restore button'
                .text(textScaleFactor: 2)
                .pad(),
            FilledButton.icon(
              onPressed: removedBattery == null
                  ? null
                  : () {
                      batteriesRM(removedBattery);
                    },
              icon: Icon(
                Icons.restore,
                size: 40,
              ),
              label: Row(
                children: [
                  'Restore Battery'.text(textScaleFactor: 2).pad(),
                ],
              ),
            ).pad(),
            FilledButton(
              onPressed: () {
                setShowDetails(!showDetails);
              },
              child: switch (showDetails) {
                true => 'Hide Details'.text(),
                false => 'Show Details'.text(),
              },
            ).pad(),
            showDetails
                ? Column(
                    children: [
                      removedBattery!.brandName.text(),
                      removedBattery.capacity.text(),
                      removedBattery.voltage.text(),
                      removedBattery.technologyType.text(),
                      removedBattery.price.text(),
                    ],
                  )
                : SizedBox(),
          ],
        ),
      );
    }
  }
}

void setShowDetails(bool details) => showDetailsRM.state = details;
final showDetailsRM = RM.inject(() => false);
bool get showDetails => showDetailsRM.state;
