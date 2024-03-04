import 'package:hmis/main.dart';

class AddPatientDialog extends UI {
  const AddPatientDialog({
    super.key,
  });

  static final nameRM = Simple('');
  static final ageRM = Simple('20');

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
              initialValue: nameRM(),
              onChanged: nameRM.call,
            ).pad(),
            TextFormField(
              initialValue: ageRM(),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                labelText: 'AGE',
              ),
              onChanged: ageRM.call,
            ).pad(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final patient = Patient(
                      id: randomID,
                      name: nameRM(),
                      age: ageRM(),
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
