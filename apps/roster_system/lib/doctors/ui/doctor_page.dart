import 'package:roster_system/doctors/doctors.dart';
import 'package:roster_system/doctors/doctors_rm.dart';

import '../../main.dart';

class DoctorPage extends UI {
  const DoctorPage({super.key, required this.id});
  final String id;

  static late Injected<Doctor> doctorRM;
  static Doctor get doctor => doctorRM.state;
  static void setDoctor(Doctor doctor) => doctorRM.state = doctor;
  @override
  void didMountWidget(BuildContext context) {
    doctorRM = RM.inject(
      () => doctors.cache[id]!,
      sideEffects: SideEffects(
        onSetState: (doctorSnap) => doctors.setDoctor(doctorSnap.state),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: doctor.name.text(),
      ),
      body: doctor.editing
          ? ListView(
              children: [
                TextFormField(
                  initialValue: doctor.name,
                  onChanged: (name) {
                    setDoctor(
                      doctor.copyWith(name: name),
                    );
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ).pad(),
                TextFormField(
                  initialValue: doctor.qualifications,
                  onChanged: (qualifications) {
                    setDoctor(
                      doctor.copyWith(qualifications: qualifications),
                    );
                  },
                  decoration: const InputDecoration(
                    labelText: 'Qualifications',
                  ),
                ).pad(),
                TextFormField(
                  initialValue: doctor.contactDetails,
                  onChanged: (contactDetails) {
                    setDoctor(
                      doctor.copyWith(contactDetails: contactDetails),
                    );
                  },
                  decoration: const InputDecoration(
                    labelText: 'Contact Details',
                  ),
                ).pad(),
                DropdownButtonFormField(
                  value: doctor.gender,
                  items: Gender.values
                      .map(
                        (eachGender) => DropdownMenuItem(
                          value: eachGender,
                          child: eachGender.name.toUpperCase().text(),
                        ),
                      )
                      .toList(),
                  onChanged: (gender) {
                    setDoctor(
                      doctor.copyWith(gender: gender!),
                    );
                  },
                  decoration: const InputDecoration(
                    labelText: 'Gender',
                  ),
                ).pad(),
                Container(
                  width: double.maxFinite,
                  height: 50,
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.ad_units),
                    onPressed: () async {
                      final selectedDateOfBirth = await showDatePicker(
                        context: context,
                        initialDate: doctor.dateOfBirth,
                        firstDate: DateTime.fromMicrosecondsSinceEpoch(0),
                        lastDate: DateTime.now(),
                      );

                      if (selectedDateOfBirth != null) {
                        setDoctor(
                          doctor.copyWith(
                            dateOfBirth: selectedDateOfBirth,
                          ),
                        );
                      }
                    },
                    label: 'Change Date Of Birth'.text().pad(),
                  ),
                ),
              ],
            )
          : ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: CircleAvatar(
                    radius: 80,
                    child: 'NONE'.text(),
                  ).pad(),
                  subtitle: const Column(
                    children: [
                      // editDoctor.name.text(textScaleFactor: 2.3),
                      // editDoctor.qualifications
                      //     .text(textScaleFactor: 1.3)
                      //     .pad(),
                      // editDoctor.contactDetails.text().pad(),
                      // editDoctor.departments.text().pad(),
                      // Icon(
                      //   switch (editDoctor.gender) {
                      //     Gender.male => Icons.male,
                      //     Gender.female => Icons.female,
                      //   },
                      //   size: 40,
                      // ),
                    ],
                  ),
                ),
                // () {
                //   final age =
                //       DateTime.now().difference(editDoctor.dateOfBirth);
                //   final int ageInYears = age.inDays ~/ 365;
                //   return CircleAvatar(
                //     child: '$ageInYears'.text(),
                //   );
                // }(),
              ],
            ).pad().pad(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => doctorEditor.setEditing(!editDoctor.editing),
      //   child: Icon(editDoctor.editing ? Icons.done : Icons.edit),
      // ),
    );
  }
}
