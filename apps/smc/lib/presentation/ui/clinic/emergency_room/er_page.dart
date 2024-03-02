// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:intl/intl.dart';
import 'package:manager/manager.dart';
import 'package:smc/presentation/blocs/patients_bloc.dart';

// ignore: must_be_immutable
class EmergencyRoomUI extends UI {
  var selectedDate;

  var age;

  EmergencyRoomUI({super.key});
  static const path = '/clinic/er';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Emergency Room'.text(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text(selectedDate == null
                  ? 'Select Date of Birth'
                  : 'Change Date of Birth'),
            ),
            const SizedBox(height: 20),
            selectedDate == null
                ? const Text('Please select your date of birth.')
                : Column(
                    children: [
                      Text(
                          'Selected Date of Birth: ${DateFormat('dd/MM/yyyy').format(selectedDate!)}'),
                      const SizedBox(height: 10),
                      Text('Your Age: $age years'),
                    ],
                  ),
            ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: patientsBloc.emergency.length,
              itemBuilder: (_, i) {
                final pt = patientsBloc.emergency[i];
                return ListTile(
                  title: pt.text(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _selectDate(BuildContext context) {}
}
