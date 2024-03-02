import 'package:manager/manager.dart';
import 'package:manager/model.dart';
import 'package:roster_system/departments/departments.dart';

final departmentsRM = DepartmentsRM();

class DepartmentsRM extends Manager<Departments> {
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

  @override
  Departments get initialState => const Departments();
  @override
  Persistor<Departments>? get persistor {
    return Persistor(
      key: 'departments',
      toJson: (state) => state.toJson(),
      fromJson: Departments.fromJson,
    );
  }
}
