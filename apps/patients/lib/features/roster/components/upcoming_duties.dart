import '../../../main.dart';

class UpcomingDuties extends UI {
  const UpcomingDuties({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final entry =
        upcomingDutyFinder.findNextRosterEntry(now, rosterManager.roster);

    return SingleChildScrollView(
      child: Column(
        children: [
          'Personal Roster'.text(textScaleFactor: 1.5).borderizeGradiently(),
          if (rosterManager.roster.isEmpty)
            'Please setup your personal roster to see your upcoming duty.'
                .text(
                  textScaleFactor: 1.5,
                )
                .borderizeGradiently()
          else ...[
            'Upcoming Duty'.text(textScaleFactor: 1.5).borderizeGradiently(),
            Table(
              border: TableBorder.all(
                width: 2,
                color: settingsManager.settings.materialColor,
                borderRadius: BorderRadius.circular(
                    settingsManager.settings.borderRadius),
              ),
              children: [
                TableRow(
                  children: [
                    TableCellBuilder(
                      child: 'DAY'.text(textScaleFactor: 2),
                    ),
                    TableCellBuilder(
                      child: (entry?.dayType.name.toUpperCase() ?? '')
                          .text(textScaleFactor: 2),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCellBuilder(
                      child: 'SHIFT'.text(textScaleFactor: 1.5),
                    ),
                    TableCellBuilder(
                      child: (entry?.shiftType.name.toUpperCase() ?? '')
                          .text(textScaleFactor: 1.5),
                    ),
                  ],
                ),
              ],
            ).pad(),
          ],
        ],
      ),
    ).borderizeGradiently();
  }
}

class BorderizedGradientBuilder extends UI {
  const BorderizedGradientBuilder({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: settingsManager.settings.materialColor,
          width: 2,
        ),
        borderRadius:
            BorderRadius.circular(settingsManager.settings.borderRadius),
        gradient: LinearGradient(
          colors: [
            Colors.red.withOpacity(.3),
            Colors.green.withOpacity(.3),
            Colors.blue.withOpacity(.3),
          ],
        ),
      ),
      child: child,
    );
  }
}
