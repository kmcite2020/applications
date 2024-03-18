import 'package:hmis/main.dart';

class AddPatientDialog extends UI {
  const AddPatientDialog({
    super.key,
  });

  static final nameRM = RM.inject(() => '');
  static final ageRM = RM.inject(() => '20');

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: 'Add Patient'.text(),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'NAME',
              ),
              initialValue: nameRM.state,
              onChanged: (name) => nameRM.state = name,
            ).pad(),
            TextFormField(
              initialValue: ageRM.state,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                labelText: 'AGE',
              ),
              onChanged: (age) => ageRM.state = age,
            ).pad(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final patient = Patient(
                      id: randomID,
                      name: nameRM.state,
                      age: ageRM.state,
                    );
                    RM.navigate.back(patient);
                  },
                  child: 'Save'.text(),
                ).pad(),
                ElevatedButton(
                  onPressed: () => RM.navigate.back(),
                  child: 'Cancel'.text(),
                ).pad(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
