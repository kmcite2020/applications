import 'package:manager/state_manager/collection.dart';

import 'package:beseech/main.dart';

part 'prayers_bloc.freezed.dart';
part 'prayers_bloc.g.dart';

final prayersRM = PrayersRM();
// RM.inject(
//   () => Prayers(),
//   persist: () => PersistState(
//     key: 'prayers',
//     toJson: (s) => jsonEncode(s.toJson()),
//     fromJson: (json) => Prayers.fromJson(jsonDecode(json)),
//   ),
// );

class PrayersRM extends ComplexCollection<Prayer> {
  static const fajrID = 'fajr';
  static const zuhrID = 'zuhr';
  static const asarID = 'asar';
  static const maghribID = 'maghrib';
  static const ishaID = 'isha';
  PrayersRM() {
    if (state.isEmpty) {
      save(Prayer(id: fajrID));
      save(Prayer(id: zuhrID));
      save(Prayer(id: asarID));
      save(Prayer(id: maghribID));
      save(Prayer(id: ishaID));
    }
  }
  int get all => state.values.fold(
        0,
        (
          previousValue,
          element,
        ) =>
            previousValue + element.count,
      );

  int getCount(String id) => get(id).count;

  int get fajr => getCount(fajrID);
  int get zuhr => getCount(zuhrID);
  int get asar => getCount(asarID);
  int get maghrib => getCount(maghribID);
  int get isha => getCount(ishaID);

  set fajr(int i) => save(get(fajrID).copyWith(count: i));
  set zuhr(int i) => save(get(zuhrID).copyWith(count: i));
  set asar(int i) => save(get(asarID).copyWith(count: i));
  set maghrib(int i) => save(get(maghribID).copyWith(count: i));
  set isha(int i) => save(get(ishaID).copyWith(count: i));
}

@freezed
class Prayer extends ID with _$Prayer {
  const factory Prayer({
    @Default('') final String id,
    @Default(0) final int count,
  }) = _Prayer;

  factory Prayer.fromJson(Map<String, dynamic> json) => _$PrayerFromJson(json);
}

// Prayers get prayers => prayersRM.state;
// void setPrayers(Prayers _) => prayersRM.state = _;

// int get fajr => prayers.fajr;
// int get zuhr => prayers.zuhr;
// int get asar => prayers.asar;
// int get maghrib => prayers.maghrib;
// int get isha => prayers.isha;

// void setFajr(int value) => setPrayers(prayers.copyWith(fajr: value));

// void setZuhr(int value) => setPrayers(prayers.copyWith(zuhr: value));

// void setAsar(int value) => setPrayers(prayers.copyWith(asar: value));

// void setMaghrib(int value) => setPrayers(prayers.copyWith(maghrib: value));

// void setIsha(int value) => setPrayers(prayers.copyWith(isha: value));

/// BEHAVIOURS

// void incrementZuhr() {
//   if (zuhr >= 0) {
//     setZuhr(zuhr + 1);
//   }
// }

// void incrementAsar() {
//   if (asar >= 0) {
//     setAsar(asar + 1);
//   }
// }

// void incrementMaghrib() {
//   if (maghrib >= 0) {
//     setMaghrib(maghrib + 1);
//   }
// }

// void incrementIsha() {
//   if (isha >= 0) {
//     setIsha(isha + 1);
//   }
// }

// void decrementFajr() {
//   if (fajr >= 1) {
//     setFajr(fajr - 1);
//   }
// }

// void decrementZuhr() {
//   if (zuhr >= 1) {
//     setZuhr(zuhr - 1);
//   }
// }

// void decrementAsar() {
//   if (asar >= 1) {
//     setAsar(asar - 1);
//   }
// }

// void decrementMaghrib() {
//   if (maghrib >= 1) {
//     setMaghrib(maghrib - 1);
//   }
// }

// void decrementIsha() {
//   if (isha >= 1) {
//     setIsha(isha - 1);
//   }
// }
