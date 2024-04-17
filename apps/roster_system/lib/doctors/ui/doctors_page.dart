import 'package:roster_system/doctors/doctors.dart';
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
        children: doctorsRM()
            .map(
              (doctor) => ListTile(
                title: doctor.name.text(),
                onTap: () {
                  RM.navigate.to(
                    DoctorPage(id: doctor.id),
                  );
                },
                trailing: IconButton(
                  onPressed: () => doctorsRM.delete(doctor.id),
                  icon: const Icon(Icons.delete),
                ),
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          doctorsRM.save(
            Doctor.init(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
