import 'package:manager/manager.dart';
import 'package:prescription_er/add_patient_wizard/add_patient_wizard.dart';
import 'package:prescription_er/main.dart';

import '../prescriptions/prescription.dart';

class CNICUI extends UI {
  const CNICUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "CNIC".text(textScaleFactor: 1.5).pad(),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: TextFormField(
                initialValue: cnic.a,
                maxLength: 5,
                onChanged: (value) => part5.state = value,
              ).pad(),
            ),
            Expanded(
              flex: 7,
              child: TextFormField(
                initialValue: cnic.b,
                maxLength: 7,
                onChanged: (value) => part7.state = value,
              ).pad(),
            ),
            Expanded(
              flex: 3,
              child: TextFormField(
                initialValue: cnic.c,
                maxLength: 1,
                onChanged: (value) => part1.state = value,
              ).pad(),
            ),
          ],
        ),
        "ADDRESS".text(textScaleFactor: 1.5).pad(),
        Wrap(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'AREA'),
              initialValue: address.area,
              onChanged: (area) {
                setPatient(
                  patient.copyWith(
                    address: address.copyWith(area: area),
                  ),
                );
              },
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'CITY'),
              initialValue: address.city,
              onChanged: (city) {
                setPatient(
                  patient.copyWith(
                    address: address.copyWith(city: city),
                  ),
                );
              },
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'PROVINCE'),
              initialValue: address.province,
              onChanged: (province) {
                setPatient(
                  patient.copyWith(
                    address: address.copyWith(province: province),
                  ),
                );
              },
            ).pad(),
            TextFormField(
              decoration: InputDecoration(labelText: 'COUNTRY'),
              initialValue: address.country,
              onChanged: (country) {
                setPatient(
                  patient.copyWith(
                    address: address.copyWith(country: country),
                  ),
                );
              },
            ).pad(),
          ],
        ),
      ],
    );
  }
}

Address get address => patient.address;

CNIC get cnic => cnicRM.state;
final cnicRM = RM.inject<CNIC>(
  () => CNIC(),
  sideEffects: SideEffects(
    onSetState: (cnicSnap) => setPatient(
      patient.copyWith(cnic: cnicSnap.state),
    ),
  ),
);
void setCNIC(CNIC cnic) => cnicRM.state = cnic;

final part5 = RM.inject<String>(
  () => '00000',
  sideEffects: SideEffects(
    onSetState: (p5) => setCNIC(
      cnic.copyWith(a: p5.state),
    ),
  ),
);
final part7 = RM.inject<String>(
  () => '0000000',
  sideEffects: SideEffects(
    onSetState: (p7) => setCNIC(
      cnic.copyWith(b: p7.state),
    ),
  ),
);
final part1 = RM.inject<String>(
  () => '0',
  sideEffects: SideEffects(
    onSetState: (p1) => setCNIC(
      cnic.copyWith(c: p1.state),
    ),
  ),
);
