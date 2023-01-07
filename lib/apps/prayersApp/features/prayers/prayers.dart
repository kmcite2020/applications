// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: unused_local_variable, avoid_print, avoid_init_to_null, prefer_const_constructors, non_constant_identifier_names

// import 'dart:convert';

// import 'package:equatable/equatable.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// final dailyPrayersRM = RM.injectFuture(() async {}

//     // persist: () => PersistState(
//     //   key: "PRAYERS__ALL_ARE YOU KIDDUNG MYE",
//     //   toJson: (s) => '',
//     //   fromJson: (json) => [],
//     //   persistStateProvider: PrayerStore(),
//     // ),
//     );
// final fajrRM = RM.inject(() => false);
// final zuhrRM = RM.inject(() => false);
// final asarRM = RM.inject(() => false);
// final maghribRM = RM.inject(() => false);
// final ishaRM = RM.inject(() => false);

// class DailyPrayer extends Equatable {
//   final bool fajr;
//   final bool zuhr;
//   final bool asar;
//   final bool maghrib;
//   final bool isha;
//   const DailyPrayer({
//     required this.fajr,
//     required this.zuhr,
//     required this.asar,
//     required this.maghrib,
//     required this.isha,
//   });

//   DailyPrayer copyWith({
//     bool? fajr,
//     bool? zuhr,
//     bool? asar,
//     bool? maghrib,
//     bool? isha,
//   }) {
//     return DailyPrayer(
//       fajr: fajr ?? this.fajr,
//       zuhr: zuhr ?? this.zuhr,
//       asar: asar ?? this.asar,
//       maghrib: maghrib ?? this.maghrib,
//       isha: isha ?? this.isha,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'fajr': fajr,
//       'zuhr': zuhr,
//       'asar': asar,
//       'maghrib': maghrib,
//       'isha': isha,
//     };
//   }

//   factory DailyPrayer.fromMap(Map<String, dynamic> map) {
//     return DailyPrayer(
//       fajr: map['fajr'] as bool,
//       zuhr: map['zuhr'] as bool,
//       asar: map['asar'] as bool,
//       maghrib: map['maghrib'] as bool,
//       isha: map['isha'] as bool,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory DailyPrayer.fromJson(String source) => DailyPrayer.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object> get props {
//     return [fajr, zuhr, asar, maghrib, isha];
//   }
// }


// /// sign in /sign up
// /// on sign in data creation 
// /// theming done
// /// 
// /// 
// /// five prayers each day
// /// from 1 day to 80 years of data
// /// ability to toggle prayer state
// /// on the left side screen date/day 
// /// on right 5 prayers
// /// girl puberty time is 13years
// /// boy puberty is 14
// /// trans is 15
// /// if puberty is given then calculated days are today - puberty
// /// if puberty unknown then DOB + spcDate if less than current date = these days for prayes
// /// 1st of all data should be initialized with the sign in /sign up if not created
// /// then daily shoud be added
// /// ability to upload data online
// /// ability to restore data on login
// /// ability to delete data on logout
// /// 
// /// if created then shold be laid out in the UI
// /// 