import 'package:manager/manager.dart';

import '../widgets/custom_app_bar.dart';

class PatientAddingPage extends UI {
  const PatientAddingPage({super.key});
  static const name = '/adding_patient';

  static final nameFF = Simple('');
  static final ageFF = Simple(
    0,
    // validators: [
    //   (x) {
    //     if (x > 120) {
    //       return 'Age limit is 120 years';
    //     }
    //     return null;
    //   },
    // ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Add Token',
      ),
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                // controller: nameFF.controller,
                decoration: InputDecoration(
                  labelText: 'NAME',
                ),
              ).pad(),
              TextFormField(
                initialValue: ageFF().toString(),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  labelText: 'AGE',
                ),
                onChanged: (x) => ageFF(int.tryParse(x)),
              ).pad(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Patient token = Patient()
                      //   ..bioData.names.patientFullName = nameFF.text
                      //   ..age.years = ageFF.value
                      //   ..dateTime = DateTime.now();
                      // navigator.back(token);
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
        ],
      ),
    );
  }
}
