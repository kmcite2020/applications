import 'package:beseech/main.dart';

part 'prayers_rm.freezed.dart';
part 'prayers_rm.g.dart';

final prayersRM = PrayersRM();

class PrayersRM extends ComplexTable<Prayer> {
  static const fajrID = 'fajr';
  static const zuhrID = 'zuhr';
  static const asarID = 'asar';
  static const maghribID = 'maghrib';
  static const ishaID = 'isha';
  PrayersRM() : super(key: '', fromJson: Prayer.fromJson) {
    save(Prayer(id: fajrID));
    save(Prayer(id: zuhrID));
    save(Prayer(id: asarID));
    save(Prayer(id: maghribID));
    save(Prayer(id: ishaID));
  }
  int get all => this().fold(
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

enum AgeVysor { years, months, days, hours, minutes, seconds }
