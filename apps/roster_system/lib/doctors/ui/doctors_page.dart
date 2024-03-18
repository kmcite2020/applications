import 'package:roster_system/doctors/doctors.dart';
import 'package:roster_system/doctors/doctors_rm.dart';
import 'package:roster_system/doctors/ui/doctor_page.dart';

import '../../main.dart';

class DoctorsPage extends UI {
  const DoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DOCTORS'.text(),
      ),
      body: ListView(
        children: doctors.cache.entries
            .map(
              (doctor) => ListTile(
                title: doctor.value.name.text(),
                onTap: () {
                  RM.navigate.to(
                    DoctorPage(id: doctor.key),
                  );
                },
                trailing: IconButton(
                  onPressed: () => doctors.removeDoctor(doctor.value),
                  icon: const Icon(Icons.delete),
                ),
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // doctorsManager.addDoctor();
          doctors.setDoctor(
            Doctor.init(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
