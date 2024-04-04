import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../core/extensions.dart';

import '../diseases_providers.dart';

class AddDiseaseWidget extends ReactiveStatelessWidget {
  AddDiseaseWidget({super.key});
  final InjectedTextEditing nameFormField = RM.injectTextEditing();
  final imageFormField = RM.injectFormField<Uint8List?>(null);
  void onImageChanged(Uint8List? image) {}
  void selectImageFromFiles() async {
    final pickImage = await FilePicker.platform.pickFiles(
      type: FileType.any,
      withData: true,
      lockParentWindow: true,
    );
    if (pickImage != null) {
      imageFormField.value = pickImage.files.first.bytes;
    }
  }

  bool exists(String name) => diseases.any((element) => element.name == name);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        Row(
          children: [
            IconButton.filled(
              onPressed: exists(nameFormField.value)
                  ? null
                  : () {
                      // diseasesBloc.addDisease(
                      //   Disease(
                      //     id: diseases.length,
                      //     name: nameFormField.value,
                      //     image: imageFormField.value,
                      //     createdAt: DateTime.now(),
                      //   ),
                      // );
                    },
              icon: const Icon(Icons.save),
            ).pad(),
          ],
        ).pad(),
        TextField(
          controller: nameFormField.controller,
          decoration: const InputDecoration(
            labelText: 'NAME',
            hintText: 'enter name of disease to add',
            // errorText: addDiseaseBloc.nameFormField.error,
          ),
        ).pad(),
        ElevatedButton(
          onPressed: selectImageFromFiles,
          child: 'Select an image from Files'.text(),
        ).pad(),
        if (imageFormField.value != null)
          SizedBox(
            height: 300,
            width: 300,
            child: Image.memory(imageFormField.value!),
          )
      ],
    );
  }
}
