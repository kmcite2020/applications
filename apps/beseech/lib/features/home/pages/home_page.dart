import 'package:beseech/features/prayers/pages/fajr_bloc.dart';
import 'package:beseech/features/prayers/pages/fajr_prayer.dart';

import '../../../main.dart';

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
          GestureDetector(
            onTap: () => navigator.to(
              FajrPage(),
            ),
            child: GenericPrayerCounterUI(
              name: 'FAJAR',
              value: fajrRM().count,
              increment: () {
                fajrRM(
                  FajrEvent.prayerIncremented(),
                );
              },
              decrement: () {
                fajrRM(
                  FajrEvent.prayerDecremented(),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              navigator.to(
                ZuhrPage(),
              );
            },
            child: GenericPrayerCounterUI(
              name: 'ZUHAR',
              value: zuhr,
              increment: incrementZuhr,
              decrement: decrementZuhr,
            ),
          ),
          GenericPrayerCounterUI(
            name: 'ASAR',
            value: asar,
            increment: incrementAsar,
            decrement: decrementAsar,
          ),
          GenericPrayerCounterUI(
            name: 'MAGHRIB',
            value: maghrib,
            increment: incrementMaghrib,
            decrement: decrementMaghrib,
          ),
          GenericPrayerCounterUI(
            name: 'ISHA',
            value: isha,
            increment: incrementIsha,
            decrement: decrementIsha,
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
