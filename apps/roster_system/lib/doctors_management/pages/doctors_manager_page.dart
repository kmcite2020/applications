import 'package:manager/manager.dart';
import 'package:roster_system/doctors_management/doctors.dart';

import 'doctor_editor_page.dart';

class DoctorsManagerPage extends UI {
  const DoctorsManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DOCTORS MANAGER'.text(),
      ),
      body: ListView(
        children: doctorsRM()
            .cache
            .entries
            .map(
              (doctor) => ListTile(
                title: doctor.value.name.text(),
                onTap: () {
                  RM.navigate.to(
                    DoctorEditorPage(id: doctor.key),
                  );
                },
                trailing: IconButton(
                  onPressed: () => doctorsRM.removeDoctor(doctor.value),
                  icon: const Icon(Icons.delete),
                ),
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // doctorsManager.addDoctor();
          doctorsRM.setDoctor(
            Doctor.init(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
