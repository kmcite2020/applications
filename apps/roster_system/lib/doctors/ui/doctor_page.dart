import '../../main.dart';

class DoctorPage extends UI {
  const DoctorPage({super.key, required this.id});
  final String id;

  static late Simple<Doctor> doctorRM;
  @override
  void didMountWidget(BuildContext context) {
    doctorRM = Simple(
      doctorsRM().cache[id]!,
      onTransition: (oldState, newState) {
        doctorsRM.setDoctor(newState);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: doctorRM().name.text(),
      ),
      body: doctorRM().editing
          ? ListView(
              children: [
                TextFormField(
                  initialValue: doctorRM().name,
                  onChanged: (name) {
                    doctorRM(
                      doctorRM().copyWith(name: name),
                    );
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ).pad(),
                TextFormField(
                  initialValue: doctorRM().qualifications,
                  onChanged: (qualifications) {
                    doctorRM(
                      doctorRM().copyWith(qualifications: qualifications),
                    );
                  },
                  decoration: const InputDecoration(
                    labelText: 'Qualifications',
                  ),
                ).pad(),
                TextFormField(
                  initialValue: doctorRM().contactDetails,
                  onChanged: (contactDetails) {
                    doctorRM(
                      doctorRM().copyWith(contactDetails: contactDetails),
                    );
                  },
                  decoration: const InputDecoration(
                    labelText: 'Contact Details',
                  ),
                ).pad(),
                DropdownButtonFormField(
                  value: doctorRM().gender,
                  items: Gender.values
                      .map(
                        (eachGender) => DropdownMenuItem(
                          value: eachGender,
                          child: eachGender.name.toUpperCase().text(),
                        ),
                      )
                      .toList(),
                  onChanged: (gender) {
                    doctorRM(
                      doctorRM().copyWith(gender: gender!),
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
                        initialDate: doctorRM().dateOfBirth,
                        firstDate: DateTime.fromMicrosecondsSinceEpoch(0),
                        lastDate: DateTime.now(),
                      );

                      if (selectedDateOfBirth != null) {
                        doctorRM(
                          doctorRM().copyWith(
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
