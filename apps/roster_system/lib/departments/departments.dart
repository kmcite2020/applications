import 'package:roster_system/main.dart';

part 'departments.freezed.dart';
part 'departments.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    @Default('') final String id,
    @Default('') final String name,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);

  factory Department.get(String id) => departmentsRM().cache[id]!;
}

@freezed
class Departments with _$Departments {
  const factory Departments({
    @Default(<String, Department>{}) final Map<String, Department> cache,
  }) = _Departments;

  factory Departments.fromJson(Map<String, dynamic> json) =>
      _$DepartmentsFromJson(json);
}
