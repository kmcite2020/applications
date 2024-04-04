import '../../main.dart';

part 'roster.freezed.dart';
part 'roster.g.dart';

@freezed
class RosterEntry with _$RosterEntry {
  const factory RosterEntry.create({
    required final ShiftType shiftType,
    required final DayType dayType,
  }) = _RosterEntry;

  factory RosterEntry.fromJson(json) => _$RosterEntryFromJson(json);
  static List<RosterEntry> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => RosterEntry.fromJson(e)).toList();
  }

  static String toListJson(List<RosterEntry> entries) {
    final List result = entries.map((e) => e.toJson()).toList();
    return json.encode(result);
  }
}

enum ShiftType { morning, evening, night }

enum DayType {
  mon('Monday'),
  tue('Tuesday'),
  wed('Wednesday'),
  thu('Thursday'),
  fri('Friday'),
  sat('Saturday'),
  sun('Sunday');

  const DayType(this.name);
  final String name;
}
