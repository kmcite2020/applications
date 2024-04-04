import '../../../main.dart';

class RosterTable extends UI {
  const RosterTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        width: 2,
        color: settingsManager.settings.materialColor,
        borderRadius:
            BorderRadius.circular(settingsManager.settings.borderRadius),
      ),
      children: [
        TableRow(
          children: [
            TableCellBuilder(child: 'Day\\Shift'.text(textScaleFactor: .8)),
            TableCellBuilder(child: 'Morning'.text(textScaleFactor: .8)),
            TableCellBuilder(child: 'Evening'.text(textScaleFactor: .8)),
            TableCellBuilder(child: 'Night'.text(textScaleFactor: .8)),
          ],
        ),
        ...DayType.values.map(
          (day) => TableRow(
            children: [
              TableCellBuilder(
                child: day.name.text(
                  textScaleFactor: .75,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ...ShiftType.values.map(
                (shift) => TableCellBuilder(
                  child: Switch(
                    value: rosterManager.roster.any(
                      (entry) =>
                          entry.dayType == day && entry.shiftType == shift,
                    ),
                    onChanged: (value) {
                      try {
                        final entry = rosterManager.roster.firstWhere(
                          (eachRosterEntry) {
                            return eachRosterEntry.dayType == day &&
                                eachRosterEntry.shiftType == shift;
                          },
                        );
                        rosterManager.removeRosterEntry(entry);
                      } catch (e) {
                        rosterManager.addRosterEntry(
                          RosterEntry.create(shiftType: shift, dayType: day),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ).pad();
  }
}
