import 'package:beseech/main.dart';

class HomePage extends UI {
  static const page = MaterialPage(child: HomePage());

  const HomePage({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: 'BESEECH'.text(textScaleFactor: 1).pad().container(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              navigator.toDialog(
                Dialog(
                  child: UserInformationUI(),
                ),
              );
            },
            icon: const Icon(Icons.info),
          ).container(),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {
              navigator.to(SettingsPage());
            },
            icon: const Icon(Icons.settings),
          ).container(),
          const SizedBox(width: 5),
        ],
      ),
      body: ListView(
        children: [
          GenericPrayerCounterUI(
            name: 'FAJR',
            value: prayersRM.fajr,
            increment: () => prayersRM.fajr++,
            decrement: () => prayersRM.fajr--,
          ),
          GenericPrayerCounterUI(
            name: 'ZUHAR',
            value: prayersRM.zuhr,
            increment: () => prayersRM.zuhr++,
            decrement: () => prayersRM.zuhr--,
          ),
          GenericPrayerCounterUI(
            name: 'ASAR',
            value: prayersRM.asar,
            increment: () => prayersRM.asar++,
            decrement: () => prayersRM.asar--,
          ),
          GenericPrayerCounterUI(
            name: 'MAGHRIB',
            value: prayersRM.maghrib,
            increment: () => prayersRM.maghrib++,
            decrement: () => prayersRM.maghrib--,
          ),
          GenericPrayerCounterUI(
            name: 'ISHA',
            value: prayersRM.isha,
            increment: () => prayersRM.isha++,
            decrement: () => prayersRM.isha--,
          ),
          const RemainingPrayersUI()
              .container(
                spread: 20,
                depth: 10,
                curveType: CurveType.concave,
                emboss: true,
                // customBorderRadiusValue: borderRadius,
                // color: materialColor.shade900,
              )
              .pad(),
        ],
      ),
    );
  }
}

class ZuhrPage extends StatefulWidget {
  const ZuhrPage({super.key});

  @override
  State<ZuhrPage> createState() => _ZuhrPageState();
}

class _ZuhrPageState extends State<ZuhrPage> {
  var count = RestorableInt(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          count.value.text(textScaleFactor: 8).pad(),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count.value++;
              });
            },
            child: '+'.text(textScaleFactor: 4),
          ).pad(),
          ElevatedButton(
            onPressed: () {
              setState(
                () {
                  count.value--;
                },
              );
            },
            child: '-'.text(textScaleFactor: 4),
          ).pad(),
        ],
      ),
    );
  }
}
