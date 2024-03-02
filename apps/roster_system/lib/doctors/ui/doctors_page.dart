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
            .cache
            .entries
            .map(
              (doctor) => ListTile(
                title: doctor.value.name.text(),
                onTap: () {
                  RM.navigate.to(
                    DoctorPage(id: doctor.key),
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
