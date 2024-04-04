import '../../main.dart';

final dutyHoursCalculator = DutyHoursCalculator();

class DutyHoursCalculator {
  dutyHoursCalculator() {}
  Duration calculateTotalDutyHours() {
    Duration totalDutyDuration = Duration.zero;
    for (final entry in rosterManager.roster) {
      int shiftDurationHours = getShiftDuration(entry.shiftType);
      Duration dutyShiftDuration = Duration(hours: shiftDurationHours);
      totalDutyDuration += dutyShiftDuration;
    }
    return totalDutyDuration;
  }

  int getShiftDuration(ShiftType shiftType) => switch (shiftType) {
        ShiftType.morning => 6,
        ShiftType.evening => 6,
        ShiftType.night => 12,
      };
}
