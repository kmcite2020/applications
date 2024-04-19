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
  PrayersRM() : super('', fromJson: Prayer.fromJson) {
    call(Prayer(id: fajrID));
    call(Prayer(id: zuhrID));
    call(Prayer(id: asarID));
    call(Prayer(id: maghribID));
    call(Prayer(id: ishaID));
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

  set fajr(int i) => call(get(fajrID).copyWith(count: i));
  set zuhr(int i) => call(get(zuhrID).copyWith(count: i));
  set asar(int i) => call(get(asarID).copyWith(count: i));
  set maghrib(int i) => call(get(maghribID).copyWith(count: i));
  set isha(int i) => call(get(ishaID).copyWith(count: i));
}

@freezed
class Prayer with _$Prayer {
  const factory Prayer({
    @Default('') final String id,
    @Default(0) final int count,
  }) = _Prayer;
  factory Prayer.fromJson(Map<String, dynamic> json) => _$PrayerFromJson(json);
}

enum AgeVysor { years, months, days, hours, minutes, seconds }
