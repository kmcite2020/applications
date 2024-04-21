import 'package:roster_system/departments/departments.dart';
import 'package:roster_system/departments/ui/department_page.dart';

import '../../main.dart';

class DepartmentsPage extends UI {
  const DepartmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Departments'.text(),
      ),
      body: ListView(
        children: departmentsRM().map(
          (department) {
            return ListTile(
              onTap: () => to(
                DepartmentPage(id: department.id),
              ),
              title: department.name.text(),
              trailing: IconButton(
                onPressed: () {
                  departmentsRM.delete(department.id);
                },
                icon: const Icon(Icons.delete_forever_sharp),
              ),
            );
          },
        ).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          departmentsRM(
            Department(id: randomID),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
