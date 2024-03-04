import 'package:hmis/main.dart';

part 'patients.g.dart';
part 'patients.freezed.dart';

@freezed
class Patients with _$Patients {
  const factory Patients({
    @Default(<String, Patient>{}) final Map<String, Patient> cache,
  }) = _Patients;

  factory Patients.fromJson(Map<String, dynamic> json) =>
      _$PatientsFromJson(json);
}

@freezed
class Patient with _$Patient {
  const factory Patient({
    @Default('') final String id,
    @Default('') final String name,
    @Default('') final String age,
    @Default(<Investigation>[]) final List<Investigation> investigations,
    @Default('') final String createdAt,
    @Default(OutComeStatus.emergency) final OutComeStatus outComeStatus,
    @Default('') final String diagnosis,
  }) = _Patient;
  factory Patient.fromJson(json) => _$PatientFromJson(json);
  const Patient._();
  int get bills {
    return investigations.fold(
      0,
      (previousValue, element) => previousValue + element.price,
    );
  }

  factory Patient.get({required String id}) => patientsRM().cache[id]!;
}

// @embedded
// class BioData {
//   Names names = Names();
//   Age age = Age();
//   CNIC cnic = CNIC();
//   TimeInformations timeInformations = TimeInformations();
// }

// @embedded
// class Names {
//   String patientFirstName = '';
//   String patientLastName = '';
//   String fatherFirstName = '';
//   String fatherLastName = '';
//   @ignore
//   String get patientFullName => '$patientFirstName $patientLastName';
//   @ignore
//   set patientFullName(String fullName) {
//     final splits = fullName.split(' ');
//     patientFirstName = splits[0];
//     patientLastName = splits[1];
//   }

//   @ignore
//   String get fatherFullName => '$fatherFirstName $fatherLastName';
//   @ignore
//   set fatherFullName(String fatherFullName) {
//     final splits = fatherFullName.split(' ');
//     fatherFirstName = splits[0];
//     fatherLastName = splits[1];
//   }
// }

// @embedded
// class CNIC {
//   CNIC() {
//     if (a.length > 5 || b.length > 7 || c.length > 1) {
//       throw Exception();
//     }
//   }

//   String a = '00000';
//   String b = '0000000';
//   String c = '0';
//   @ignore
//   set cnic(String cnic) {
//     assert(cnic.length == 13);
//     a = cnic.substring(0, 5);
//     b = cnic.substring(5, 12);
//     c = cnic.substring(12);
//   }

//   @ignore
//   @override
//   String toString() {
//     return '$a-$b-$c';
//   }
// }

// @embedded
// class TimeInformations {
//   TimeInformations() {
//     createdAt = DateTime.now().millisecondsSinceEpoch;
//     updateHistory = [createdAt];
//   }
//   int createdAt = 0;
//   int lastUpdatedAt = 0;
//   List<int> updateHistory = [];
//   @ignore
//   DateTime get createdAtTime {
//     return DateTime.fromMillisecondsSinceEpoch(createdAt, isUtc: true);
//   }

//   @ignore
//   set lastUpdatedDateTime(DateTime dateTime) {
//     lastUpdatedAt = dateTime.millisecondsSinceEpoch;
//     updateHistory.add(lastUpdatedAt);
//   }

//   @ignore
//   TimeOfDay get timeOfDay => TimeOfDay.fromDateTime(createdAtTime);
// }

// @embedded
// class Age {
//   int age = 0; // microseconds

//   @ignore
//   Duration get duration => Duration(microseconds: age);
//   @ignore
//   set duration(Duration duration) => age = duration.inMicroseconds;

//   @ignore
//   int get years => duration.inDays ~/ 365;
//   @ignore
//   set years(int years) => age = Duration(days: years * 365).inMicroseconds;

//   @ignore
//   int get months => (duration.inDays % 365) ~/ 30;
//   @ignore
//   set months(int months) {
//     age = Duration(days: months * 30).inMicroseconds;
//   }

//   @ignore
//   int get days => (duration.inDays % 365) % 30;
//   @ignore
//   set days(int days) => age = Duration(days: days).inMicroseconds;
// }

enum OutComeStatus {
  emergency,
  discharged,
  admitted,
  referred,
  expired;
}

class OutCome {
  OutComeStatus outComeStatus = OutComeStatus.emergency;
}
