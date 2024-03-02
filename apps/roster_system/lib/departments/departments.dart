import 'package:freezed_annotation/freezed_annotation.dart';

part 'departments.freezed.dart';
part 'departments.g.dart';

@freezed
class Department with _$Department {
  const factory Department() = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
