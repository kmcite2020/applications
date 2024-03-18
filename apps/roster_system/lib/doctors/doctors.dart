import 'package:roster_system/doctors/doctors_rm.dart';
import 'package:roster_system/main.dart';

part 'doctors.freezed.dart';
part 'doctors.g.dart';

enum Gender { male, female }

@freezed
class Doctor with _$Doctor {
  const Doctor._();
  const factory Doctor({
    required final String id,
    @Default('') final String name,
    @Default(Gender.male) final Gender gender,
    required final DateTime dateOfBirth,
    @Default('') final String qualifications,
    @Default('') final String contactDetails,
    @Default('') final String profilePicture,
    @Default('') final String departments,
    @Default(true) final bool editing,
  }) = _Doctor;

  Uint8List? get image {
    if (profilePicture != '') {
      return File(profilePicture).readAsBytesSync();
    }
    return null;
  }

  factory Doctor.fromJson(json) => _$DoctorFromJson(json);
  factory Doctor.get({required String id}) => doctors.cache[id]!;

  factory Doctor.init() {
    return Doctor(
      id: randomID,
      dateOfBirth: DateTime(1995),
    );
  }
}

@freezed
class Doctors with _$Doctors {
  const factory Doctors({
    @Default(<String, Doctor>{}) final Map<String, Doctor> cache,
  }) = _Doctors;

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);

  const Doctors._();

  void setDoctor(Doctor doctor) {
    doctors = doctors.copyWith(
      cache: Map.of(doctors.cache)..[doctor.id] = doctor,
    );
  }

  void removeDoctor(Doctor doctor) {
    doctorsRM.state = doctorsRM.state.copyWith(
      cache: Map.of(doctors.cache)..remove(doctor.id),
    );
  }
}
