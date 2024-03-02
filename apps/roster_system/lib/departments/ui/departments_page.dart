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
        children: departmentsRM().cache.entries.map(
          (departmentEntry) {
            return ListTile(
              onTap: () => RM.navigate.to(
                DepartmentPage(id: departmentEntry.key),
              ),
              title: departmentEntry.value.name.text(),
              trailing: IconButton(
                onPressed: () {
                  departmentsRM.remove(departmentEntry.value);
                },
                icon: const Icon(Icons.delete_forever_sharp),
              ),
            );
          },
        ).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          departmentsRM.add(
            Department(id: randomID),
          );
        },
      ),
    );
  }
}
