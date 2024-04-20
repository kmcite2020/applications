import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:manager/manager.dart';
import 'package:memories/memories/memory.dart';

final isFullScreenRM = Simple(false);

class MemoryPage extends UI {
  const MemoryPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    final Memory? memory = memoriesRM.tryGet(id);
    if (memory == null) return Container();
    final image = Hero(
      tag: id,
      child: Image.file(
        File(memory.path),
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              'Image not found'.text().center().pad(),
              error.text().pad(),
              ElevatedButton(
                onPressed: updateMemoryWithImage,
                child: 'Add Image'.text(),
              ).pad(),
            ],
          );
        },
      ).center(),
    );
    final fullScreenToggle = Positioned(
      bottom: 8,
      right: 8,
      child: IconButton(
        onPressed: () {
          isFullScreenRM.toggle();
        },
        icon: Icon(Icons.fullscreen),
      ),
    );
    final stack = Stack(
      children: [
        image,
        fullScreenToggle,
      ],
    );
    if (isFullScreenRM()) {
      return stack;
    } else {
      return Scaffold(
        appBar: AppBar(
          title: memory.name.text(),
        ),
        body: stack,
      );
    }
  }

  void updateMemoryWithImage() async {
    late final memory = memoriesRM.tryGet(id);
    if (memory == null) return;
    final picked = await FilePicker.platform.pickFiles();
    if (picked == null) return;
    final path = picked.files.first.path;
    if (path == null) return;
    memoriesRM(memory.copyWith(path: path));
  }
}
