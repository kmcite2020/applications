import '../../main.dart';

class DepartmentPage extends UI {
  const DepartmentPage({
    super.key,
    required this.id,
  });
  final String id;
  static late Injected<Department> departmentRM;
  static Department get department => departmentRM.state;
  static void setDepartment(Department department) =>
      departmentRM.state = department;
  @override
  void didMountWidget(BuildContext context) {
    departmentRM = RM.inject<Department>(
      () => Department.get(id),
      sideEffects: SideEffects(
        onSetState: (departmentSnap) {
          addDepartment(departmentSnap.state);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: department.name.text(),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: department.name,
            onChanged: (name) {
              setDepartment(
                department.copyWith(name: name),
              );
            },
          ).pad(),
        ],
      ),
    );
  }
}
