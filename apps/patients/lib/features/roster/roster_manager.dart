import '../../main.dart';

class RosterManager {
  final rosterRM = RM.inject(
    () => <RosterEntry>[],
    persist: () => PersistState(
      key: 'entries',
      fromJson: RosterEntry.fromListJson,
      toJson: RosterEntry.toListJson,
    ),
  );
  List<RosterEntry> get roster => rosterRM.state;
  set roster(List<RosterEntry> roster) => rosterRM.state = roster;
  void addRosterEntry(RosterEntry rosterEntry) {
    roster = [...roster, rosterEntry];
  }

  void removeRosterEntry(RosterEntry rosterEntry) {
    roster = [...roster]..remove(rosterEntry);
  }
}

final rosterManager = RosterManager();
