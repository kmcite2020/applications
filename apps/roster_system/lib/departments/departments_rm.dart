import '../main.dart';

final departmentsRM = RM.inject(
  () => Departments(),
  persist: () => PersistState(
    key: 'departments',
    toJson: (state) => jsonEncode(state.toJson()),
    fromJson: (json) => Departments.fromJson(jsonDecode(json)),
  ),
);
Departments get departments => departmentsRM.state;
set departments(Departments newState) => departmentsRM.state = newState;

void addDepartment(Department department) {
  departments = departments.copyWith(
    cache: Map.of(departments.cache)..[department.id] = department,
  );
}

void removeDepartment(Department department) {
  departments = departments.copyWith(
    cache: Map.of(departments.cache)..remove(department.id),
  );
}
