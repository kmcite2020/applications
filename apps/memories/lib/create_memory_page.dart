import 'package:file_picker/file_picker.dart';
import 'package:manager/manager.dart';

import 'memories/memory.dart';

bool get isMemorySavable {
  return nameRM() == '' || descriptionRM() == '' || pathRM() == '';
}

final nameRM = Simple('');
final descriptionRM = Simple('');
final pathRM = Simple('');

bool get isImagePicked => pathRM() != '';
final pickImage = () async {
  final picked = await FilePicker.platform.pickFiles();
  if (picked == null) return;
  final path = picked.files.first.path;
  if (path == null) return;
  pathRM(path);
};

final createMemory = () async {
  memoriesRM(
    Memory(
      id: randomID,
      name: nameRM(),
      description: descriptionRM(),
      path: pathRM(),
    ),
  );
  back();
};

class CreateMemoryPage extends UI {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            initialValue: nameRM(),
            onChanged: nameRM.call,
          ).pad(),
          TextFormField(
            initialValue: descriptionRM(),
            onChanged: descriptionRM.call,
          ).pad(),
          ElevatedButton(
            onPressed: isImagePicked ? null : pickImage,
            child: 'Pick Image'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: isMemorySavable ? null : createMemory,
            child: 'Save Memory'.text(),
          ).pad(),
        ],
      ).pad(),
    );
  }
}
