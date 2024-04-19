import 'package:derma_handbook/main.dart';
import 'package:file_picker/file_picker.dart';
import '../components/disease_builder.dart';
import '../edit_disease_ui/edit_disease_bloc.dart';

class EditDiseasePage extends ReactiveStatelessWidget {
  const EditDiseasePage({
    required this.id,
  });

  final String id;
  @override
  Widget build(BuildContext context) {
    return DiseaseBuilder(
      id: id,
      builder: (diseaseModel) {
        return Scaffold(
          appBar: AppBar(
            leading: const SizedBox(),
            title: editDiseaseBloc.name.text(),
            actions: [
              (diseaseModel.id).text(textScaleFactor: 2).pad(),
              const IconButton(
                onPressed: clearEditModel,
                tooltip: 'clear',
                icon: Icon(Icons.clear),
              ).pad(),
            ],
          ),
          body: ListView(
            children: [
              'Name'.text(textScaleFactor: 2).pad(),
              TextFormField(
                controller: nameRM.controller,
                onChanged: editDiseaseBloc.onNameChanged,
              ).pad(),
              'single tap to delete | double tap to delete and edit'
                  .text()
                  .pad()
                  .center(),
              'Descriptions'.text(textScaleFactor: 2).pad(),
              Wrap(
                children: editDiseaseBloc.descriptions.map(
                  (e) {
                    return GestureDetector(
                      onDoubleTap: () {
                        editDiseaseBloc.removeDescription(e);
                        descriptionRM.controller.text = e;
                      },
                      child: ActionChip(
                        onPressed: () => editDiseaseBloc.removeDescription(e),
                        label: e.text(),
                      ).pad(),
                    );
                  },
                ).toList(),
              ),
              TextFormField(
                controller: descriptionRM.controller,
                onFieldSubmitted: (value) {
                  editDiseaseBloc.addDescription(value);
                  descriptionRM.reset();
                  descriptionRM.focusNode.requestFocus();
                },
              ).pad(),
              'Instructions'.text(textScaleFactor: 2).pad(),
              Wrap(
                children: editDiseaseBloc.instructions.map<Widget>(
                  (e) {
                    return GestureDetector(
                      onDoubleTap: () {
                        editDiseaseBloc.removeInstruction(e);
                        instructionRM.controller.text = e;
                      },
                      child: ActionChip(
                        onPressed: () => editDiseaseBloc.removeInstruction(e),
                        label: e.text(),
                      ).pad(),
                    );
                  },
                ).toList(),
              ),
              TextFormField(
                controller: instructionRM.controller,
                onFieldSubmitted: (value) {
                  editDiseaseBloc.addInstruction(value);
                  instructionRM.reset();
                  instructionRM.focusNode.requestFocus();
                },
              ).pad(),
              'Managements'.text(textScaleFactor: 2).pad(),
              Wrap(
                children: editDiseaseBloc.managements.map(
                  (e) {
                    return GestureDetector(
                      onDoubleTap: () {
                        editDiseaseBloc.removeManagement(e);
                        managementRM.controller.text = e;
                      },
                      child: ActionChip(
                        onPressed: () => editDiseaseBloc.removeManagement(e),
                        label: e.text(),
                      ).pad(),
                    );
                  },
                ).toList(),
              ),
              TextFormField(
                controller: managementRM.controller,
                onFieldSubmitted: (value) {
                  editDiseaseBloc.addManagement(value);
                  managementRM.reset();
                  managementRM.focusNode.requestFocus();
                },
              ).pad(),
              ElevatedButton(
                onPressed: backgroundImageSelector,
                child: 'Add background pic'.text(),
              ).pad(),
              if (editDiseaseBloc.image != null)
                Image.memory(
                  editDiseaseBloc.image as Uint8List,
                  width: 250,
                  height: 250,
                ),
              'Thanks'.text(textScaleFactor: 4).center().pad()
            ],
          ),
          floatingActionButton: ButtonBar(
            children: [
              FloatingActionButton(
                heroTag: randomID,
                onPressed: () {
                  navigator.back();
                },
                child: const Icon(Icons.arrow_circle_left_outlined),
              ),
              FloatingActionButton(
                heroTag: randomID,
                onPressed: cancelEditingDisease,
                child: const Icon(Icons.cancel_outlined),
              ),
              editDiseaseBloc.editModel.editId == -1
                  ? const SizedBox()
                  : FloatingActionButton(
                      heroTag: randomID,
                      onPressed: () {
                        navigator.back();
                        // diseasesBloc.addDisease(disease);

                        editDiseaseBloc.setEditModel(
                            editDiseaseBloc.editModel.copyWith(editId: '-1'));
                      },
                      child: const Icon(Icons.done_outline_outlined),
                    ),
            ],
          ),
        );
      },
    );
  }
}

final nameRM = RM.injectTextEditing(text: editDiseaseBloc.name);
final descriptionRM = RM.injectTextEditing();
final instructionRM = RM.injectTextEditing();
final managementRM = RM.injectTextEditing();

final editDiseaseBloc = EditDiseaseBloc();

void clearEditModel() {
  editDiseaseBloc.setEditModel(editDiseaseBloc.editModel.copyWith(
    name: '',
    image: null,
    descriptions: [],
    instructions: [],
    managements: [],
  ));
  nameRM.controller.text = '';
  descriptionRM.controller.text = '';
  instructionRM.controller.text = '';
  managementRM.controller.text = '';
}

void cancelEditingDisease() {
  editDiseaseBloc.setEditModel(EditModel().copyWith(editId: '-1'));
  navigator.back();
}

void backgroundImageSelector() async {
  final image = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'png'],
    withData: true,
  );
  if (image != null) {
    final pic = image.files.first;
    if (kDebugMode) {
      print(pic.bytes?.length);
    }
    editDiseaseBloc.image = pic.bytes;
  }
}
