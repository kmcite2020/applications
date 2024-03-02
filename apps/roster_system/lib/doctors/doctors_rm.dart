import 'package:roster_system/main.dart';

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
