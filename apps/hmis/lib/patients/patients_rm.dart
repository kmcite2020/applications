import '../main.dart';

enum PatientsPages { list, single }

final patientsPagesRM = Simple(PatientsPages.list);

final patientsRM = PatientsRM();

class PatientsRM extends Manager<Patients> {
  @override
  Patients get initialState => const Patients();
  @override
  Persistor<Patients>? get persistor {
    return Persistor(
      key: 'patientsW',
      fromJson: Patients.fromJson,
      toJson: (state) => state.toJson(),
    );
  }

  void add(Patient patient) {
    call(
      state.copyWith(
        cache: Map.of(state.cache)..[patient.id] = patient,
      ),
    );
  }

  void remove(Patient patient) {
    call(
      state.copyWith(
        cache: Map.of(state.cache)..remove(patient.id),
      ),
    );
  }
}
