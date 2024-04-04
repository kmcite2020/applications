import 'package:beseech/features/prayers/pages/fajr_bloc.dart';
import 'package:beseech/main.dart';

class FajrPage extends UI {
  const FajrPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          'Fajr'.text(textScaleFactor: 3).pad().container().pad(),
          fajrRM.state.count.text(textScaleFactor: 4).pad().container().pad(),
          GestureDetector(
            onTap: () {
              fajrRM.add(FajrEvent.prayerIncremented());
              incrementFajr();
            },
            child: '+'.text(),
          ).pad().container().pad(),
          GestureDetector(
            onTap: () {
              fajrRM.add(FajrEvent.prayerDecremented());
              incrementFajr();
            },
            child: '-'.text(),
          ).pad().container().pad(),
        ],
      ),
    );
  }
}
