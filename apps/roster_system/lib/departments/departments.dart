import 'package:roster_system/departments/ui/department_page.dart';
import 'package:roster_system/main.dart';

import '../doctors/doctors.dart';

part 'departments.freezed.dart';
part 'departments.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    @Default('') final String id,
    @Default('') final String name,
    @Default(<Duty>[]) final List<Duty> duties,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

@freezed
class Duty with _$Duty {
  const factory Duty({
    required final DayShift dayShift,
    required final Doctor doctor,
  }) = _Duty;

  factory Duty.fromJson(Map<String, dynamic> json) => _$DutyFromJson(json);
}

final departmentsRM = ComplexTable(
  'departments',
  fromJson: Department.fromJson,
);

class DepartmentBuilder extends UI {
  final Widget Function(Department department) builder;
  final String id;
  const DepartmentBuilder({
    super.key,
    required this.builder,
    required this.id,
  });
  @override
  Widget build(BuildContext context) {
    return builder(departmentsRM.get(id));
  }
}
