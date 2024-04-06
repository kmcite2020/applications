import '../../../main.dart';

Future<DateTime?> showDateTimeDialog([DateTime? value]) {
  final now = DateTime.now();
  return showDatePicker(
    context: RM.context!,
    initialDate: value ?? now,
    firstDate: DateTime(1900),
    lastDate: now,
  );
}
