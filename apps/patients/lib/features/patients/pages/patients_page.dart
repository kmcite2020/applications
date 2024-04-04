import '../../../main.dart';

class PatientsPage extends UI {
  const PatientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'PATIENTS'.text(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () async {
              final response = await navigator.toDialog(
                const CreatePatientDialog(),
                barrierDismissible: false,
              );
              if (response == 0) {
                setPatient(newPatientManager.patient);
              }
            },
            icon: const Icon(Icons.add),
          ).pad(),
          const BackIconButton(),
        ],
      ),
      body: ListView.builder(
        itemCount: listOfPatients.length,
        itemBuilder: (context, index) =>
            PatientTile(id: listOfPatients[index].id),
      ),
    );
  }
}

class BackIconButton extends UI {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: navigator.back,
      icon: const Icon(Icons.keyboard_arrow_left),
    ).pad(
      padding: EdgeInsets.only(right: settingsManager.padding),
    );
  }
}
