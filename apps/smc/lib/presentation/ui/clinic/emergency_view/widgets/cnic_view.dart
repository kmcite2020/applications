import 'package:smc/main.dart';

class CNICView extends UI {
  const CNICView({
    super.key,
    required this.patient,
  });
  final Patient patient;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "CNIC".text(),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: TextFormField(
                initialValue: patient.cnic.a,
                onChanged: (value) {
                  // patientsBloc.setCNIC(
                  //   patient.cnic..a = value,
                  //   patient,
                  // );
                },
                maxLength: 5,
              ).pad(),
            ),
            Expanded(
              flex: 7,
              child: TextFormField(
                initialValue: patient.cnic.b,
                onChanged: (value) {
                  // patientsBloc.setCNIC(
                  //   patient.cnic..b = value,
                  //   patient,
                  // );
                },
                maxLength: 7,
              ).pad(),
            ),
            Expanded(
              flex: 3,
              child: TextFormField(
                initialValue: patient.cnic.c,
                onChanged: (value) {
                  // patientsBloc.setCNIC(
                  //   patient.cnic..c = value,
                  //   patient,
                  // );
                },
                maxLength: 1,
              ).pad(),
            ),
          ],
        ),
      ],
    );
  }
}
