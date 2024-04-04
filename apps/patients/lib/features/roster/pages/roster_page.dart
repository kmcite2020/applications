import '../../../main.dart';

class RosterPage extends UI {
  const RosterPage({super.key});
  static int get hours {
    return dutyHoursCalculator.calculateTotalDutyHours().inHours;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'ROSTER'.text(),
        automaticallyImplyLeading: false,
        actions: const [
          BackIconButton(),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          "$hours Hours"
              .text(textScaleFactor: 3)
              .center()
              .borderizeGradiently(),
          const RosterTable(),
        ],
      ),
    );
  }
}
