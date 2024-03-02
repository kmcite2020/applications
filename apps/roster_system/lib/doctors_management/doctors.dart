import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manager/manager.dart';
import 'package:manager/model.dart';

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
  factory Doctor.get({required String id}) => doctorsRM().cache[id]!;

  factory Doctor.init() => Doctor(
        id: randomID,
        dateOfBirth: DateTime(1995),
      );
}

@freezed
class Doctors with _$Doctors {
  const factory Doctors({
    @Default(<String, Doctor>{}) final Map<String, Doctor> cache,
  }) = _Doctors;

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}

final doctorsRM = DoctorsRM();

class DoctorsRM extends Manager<Doctors> {
  @override
  Doctors get initialState => const Doctors();
  void setDoctor(Doctor doctor) {
    state = state.copyWith(
      cache: Map.of(state.cache)..[doctor.id] = doctor,
    );
  }

  void removeDoctor(Doctor doctor) {
    state = state.copyWith(
      cache: Map.of(state.cache)..remove(doctor.id),
    );
  }

  @override
  Persistor<Doctors>? get persistor {
    return Persistor(
      key: 'doctors',
      toJson: (state) => state.toJson(),
      fromJson: Doctors.fromJson,
    );
  }
}
