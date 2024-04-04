import '../../../main.dart';

Future<DateTime?> showDateTimeDialog([DateTime? value]) {
  final now = DateTime.now();
  BuildContext? context;
  // showDialog(
  //   context: context,
  //   builder: (_) => const Dialog(
  //     child: DateOfBirthUI(),
  //   ),
  // );
  return showDatePicker(
    context: context!,
    initialDate: value ?? now,
    firstDate: DateTime(1900),
    lastDate: now,
  );
}
