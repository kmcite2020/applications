import 'package:batteries/battery/batteries_rm.dart';
import 'package:batteries/battery/battery.dart';
import 'package:batteries/main.dart';
import 'package:manager/manager.dart';

class BatteryDetailsPage extends UI {
  const BatteryDetailsPage({super.key, required this.batteryID});

  final String batteryID;

  @override
  Widget build(BuildContext context) {
    final battery = Battery.fromID(batteryID);
    if (battery != null) {
      return Scaffold(
        appBar: AppBar(
          title: battery.brandName.text(),
          actions: [
            IconButton(
              onPressed: () {
                batteriesRM(
                  RemoveBatteryEvent(batteryToRemove: battery),
                );
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
      final remBat = batteriesRM().removedBattery;

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
              onPressed: remBat == null
                  ? null
                  : () {
                      batteriesRM(
                        RestoreBatteryEvent(
                          batteryToRestore: batteriesRM().removedBattery!,
                        ),
                      );
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
                showDetailsRM(!showDetailsRM());
              },
              child: switch (showDetailsRM()) {
                true => 'Hide Details'.text(),
                false => 'Show Details'.text(),
              },
            ).pad(),
            showDetailsRM()
                ? Column(
                    children: [
                      remBat!.brandName.text(),
                      remBat.capacity.text(),
                      remBat.voltage.text(),
                      remBat.technologyType.text(),
                      remBat.price.text(),
                    ],
                  )
                : SizedBox(),
          ],
        ),
      );
    }
  }
}

final showDetailsRM = Simple(false);
