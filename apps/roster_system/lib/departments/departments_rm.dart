import '../main.dart';

final departmentsRM = DepartmentsRM();

class DepartmentsRM {
  final departmentsRM = RM.inject(
    () => Departments(),
    persist: () => PersistState(
      key: 'departments',
      toJson: (state) => jsonEncode(state.toJson()),
      fromJson: (json) => Departments.fromJson(jsonDecode(json)),
    ),
  );
  Departments get state => departmentsRM.state;
  set state(Departments newState) => departmentsRM.state = newState;

  void add(Department department) {
    state = state.copyWith(
      cache: Map.of(state.cache)..[department.id] = department,
    );
  }

  void remove(Department department) {
    state = state.copyWith(
      cache: Map.of(state.cache)..remove(department.id),
    );
  }
}
