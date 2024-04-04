import 'package:ideal_store/main.dart';

Future<String?> filePicker() async {
  FilePickerResult? filePickerResult = await FilePicker.platform.pickFiles(
    dialogTitle: 'Select Image for Product',
    type: FileType.custom,
    allowedExtensions: [
      'jpg',
      'png',
    ],
  );
  if (filePickerResult != null) {
    final imageFile = filePickerResult.files.first;
    return base64Encode(imageFile.bytes!);
  } else {
    return null;
  }
}
