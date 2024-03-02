import 'package:manager/manager.dart';
import 'package:roster_system/departments/departments.dart';
import 'package:roster_system/departments/departments_rm.dart';

class DepartmentPage extends UI {
  const DepartmentPage({
    super.key,
    required this.id,
  });
  final String id;
  static late Simple<Department> departmentRM;
  @override
  void didMountWidget(BuildContext context) {
    departmentRM = Simple(
      Department.get(id),
      onTransition: (oldState, newState) {
        departmentsRM.add(newState);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: departmentRM().name.text(),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: departmentRM().name,
            onChanged: (name) {
              departmentRM(
                departmentRM().copyWith(name: name),
              );
            },
          ).pad(),
        ],
      ),
    );
  }
}
