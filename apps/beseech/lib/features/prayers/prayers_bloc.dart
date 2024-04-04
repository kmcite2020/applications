import 'dart:convert';

import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:beseech/features/prayers/prayers.dart';

final prayersRM = RM.inject(
  () => Prayers(),
  persist: () => PersistState(
    key: 'prayers',
    toJson: (s) => jsonEncode(s.toJson()),
    fromJson: (json) => Prayers.fromJson(jsonDecode(json)),
  ),
);

Prayers get prayers => prayersRM.state;
void setPrayers(Prayers _) => prayersRM.state = _;

int get fajr => prayers.fajr;
int get zuhr => prayers.zuhr;
int get asar => prayers.asar;
int get maghrib => prayers.maghrib;
int get isha => prayers.isha;

void setFajr(int value) => setPrayers(prayers.copyWith(fajr: value));

void setZuhr(int value) => setPrayers(prayers.copyWith(zuhr: value));

void setAsar(int value) => setPrayers(prayers.copyWith(asar: value));

void setMaghrib(int value) => setPrayers(prayers.copyWith(maghrib: value));

void setIsha(int value) => setPrayers(prayers.copyWith(isha: value));

/// BEHAVIOURS
void incrementFajr() {
  if (fajr >= 0) {
    setFajr(fajr + 1);
  } else {}
}

void incrementZuhr() {
  if (zuhr >= 0) {
    setZuhr(zuhr + 1);
  }
}

void incrementAsar() {
  if (asar >= 0) {
    setAsar(asar + 1);
  }
}

void incrementMaghrib() {
  if (maghrib >= 0) {
    setMaghrib(maghrib + 1);
  }
}

void incrementIsha() {
  if (isha >= 0) {
    setIsha(isha + 1);
  }
}

void decrementFajr() {
  if (fajr >= 1) {
    setFajr(fajr - 1);
  }
}

void decrementZuhr() {
  if (zuhr >= 1) {
    setZuhr(zuhr - 1);
  }
}

void decrementAsar() {
  if (asar >= 1) {
    setAsar(asar - 1);
  }
}

void decrementMaghrib() {
  if (maghrib >= 1) {
    setMaghrib(maghrib - 1);
  }
}

void decrementIsha() {
  if (isha >= 1) {
    setIsha(isha - 1);
  }
}
