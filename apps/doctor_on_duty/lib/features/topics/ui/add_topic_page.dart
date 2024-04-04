import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:doctor_on_duty/features/core/core.dart';
import 'package:doctor_on_duty/features/topics/topics_bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../main.dart';
import '../../chapters_page/chapter.dart';
import '../topics.dart';

class AddTopicPage extends ReactiveStatelessWidget {
  const AddTopicPage({super.key});

  static final provisionalDiagnosisRM = RM.injectTextEditing(
    autoDispose: false,
  );
  static final symptomsRM = RM.injectTextEditing(
    autoDispose: false,
  );

  @override
  Widget build(BuildContext context) {
    final topic = addTopicBloc.topic;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          TextFormField(
            initialValue: topic.name,
            onChanged: addTopicBloc.setName,
            decoration: InputDecoration(labelText: 'Name'),
          ).pad(),
          DropdownButtonFormField(
            value: topic.chapter,
            items: Chapter.values
                .map(
                  (eachChapter) => DropdownMenuItem(
                    value: eachChapter,
                    child: eachChapter.description.text(),
                  ),
                )
                .toList(),
            onChanged: addTopicBloc.setChapter,
            decoration: InputDecoration(labelText: 'Chapter'),
          ).pad(),
          TextFormField(
            initialValue: topic.diagnosis.definiteDiagnosis,
            onChanged: addTopicBloc.setDefiniteDiagnosis,
            decoration: InputDecoration(labelText: 'Diagnosis'),
          ).pad(),
          TextFormField(
            controller: provisionalDiagnosisRM.controller,
            focusNode: provisionalDiagnosisRM.focusNode,
            onFieldSubmitted: (provisionalDiagnosis) {
              final pds = topic.diagnosis.provisionalDiagnosis;
              addTopicBloc
                  .setProvisionalDiagnoses([...pds]..add(provisionalDiagnosis));
              provisionalDiagnosisRM.controller.clear();
              provisionalDiagnosisRM.focusNode.requestFocus();
            },
            decoration: InputDecoration(
                labelText: 'Provisional Diagnosis - Tap enter to add'),
          ).pad(),
          Wrap(
            children: topic.diagnosis.provisionalDiagnosis
                .map(
                  (eachProvisionalDiagnosis) => Chip(
                    label: eachProvisionalDiagnosis.text(),
                    onDeleted: () {
                      final pds = topic.diagnosis.provisionalDiagnosis;
                      addTopicBloc.setProvisionalDiagnoses(
                        [...pds]..remove(eachProvisionalDiagnosis),
                      );
                    },
                  ),
                )
                .toList(),
          ).pad(),
          TextFormField(
            initialValue: topic.definition,
            onChanged: addTopicBloc.setDefinition,
            decoration: InputDecoration(labelText: 'Definition'),
            maxLines: 5,
          ).pad(),
          TextFormField(
            initialValue: topic.epidemiology,
            onChanged: addTopicBloc.setEpidemiology,
            decoration: InputDecoration(labelText: 'Epidemiology'),
            maxLines: 5,
          ).pad(),
          TextFormField(
            controller: symptomsRM.controller,
            focusNode: symptomsRM.focusNode,
            onFieldSubmitted: (symptom) {
              addTopicBloc.setSymptoms([...topic.symptoms]..add(symptom));
              symptomsRM.controller.clear();
              symptomsRM.focusNode.requestFocus();
            },
            decoration:
                InputDecoration(labelText: 'Symptoms - Tap enter to add'),
          ).pad(),
          Wrap(
            children: topic.symptoms
                .map(
                  (eachSymptom) => Chip(
                    label: eachSymptom.text(),
                    onDeleted: () => addTopicBloc
                        .setSymptoms([...topic.symptoms]..remove(eachSymptom)),
                  ),
                )
                .toList(),
          ).pad(),
          TextFormField(
            initialValue: topic.signs.eye,
            onChanged: addTopicBloc.setEyeSigns,
            decoration: InputDecoration(labelText: 'EYE - notes'),
          ).pad(),
          TextFormField(
            initialValue: topic.signs.ent,
            onChanged: addTopicBloc.setEntSigns,
            decoration: InputDecoration(labelText: 'ENT - notes'),
          ).pad(),
          TextFormField(
            initialValue: topic.signs.cns,
            onChanged: addTopicBloc.setCnsSigns,
            decoration: InputDecoration(labelText: 'Neurology - notes'),
          ).pad(),
          TextFormField(
            initialValue: topic.signs.cvs,
            onChanged: addTopicBloc.setCvsSigns,
            decoration: InputDecoration(labelText: 'Cardilogy - notes'),
          ).pad(),
          TextFormField(
            initialValue: topic.signs.pulmo,
            onChanged: addTopicBloc.setPulmoSigns,
            decoration: InputDecoration(labelText: 'Pulmonology - notes'),
          ).pad(),
          TextFormField(
            initialValue: topic.signs.gu,
            onChanged: addTopicBloc.setGuSigns,
            decoration:
                InputDecoration(labelText: 'Genito-Urinary Signs - notes'),
          ).pad(),
          TextFormField(
            initialValue: topic.signs.gi,
            onChanged: addTopicBloc.setGiSigns,
            decoration: InputDecoration(labelText: 'Gastro-Signs - notes'),
          ).pad(),
          'Temperature'.text().pad(),
          Slider(
            value: topic.signs.vitalsSigns.temperature.temperature,
            // min: 305,
            max: 320,
            onChanged: addTopicBloc.setTemperatureValue,
          ).pad(),
          'BP - systolic'.text().pad(),
          Slider(
            min: 0,
            max: 300,
            value: topic.signs.vitalsSigns.bloodPressure.systolic.toDouble(),
            onChanged: (pressure) {
              addTopicBloc.setSystolicBP(pressure.toInt());
            },
          ).pad(),
          'BP - diastolic'.text().pad(),
          Slider(
            min: 0,
            max: 200,
            value: topic.signs.vitalsSigns.bloodPressure.diastolic.toDouble(),
            onChanged: (pressure) {
              addTopicBloc.setDiastolicBP(pressure.toInt());
            },
          ).pad(),
          'RR'.text().pad(),
          Slider(
            min: 0,
            max: 80,
            value: topic.signs.vitalsSigns.respiratoryRate.toDouble(),
            onChanged: (respiratoryRate) =>
                addTopicBloc.setRespiratoryRate(respiratoryRate.toInt()),
          ).pad(),
          'Sats SpO2'.text().pad(),
          Slider(
            min: 0,
            max: 100,
            value: topic.signs.vitalsSigns.saturation.toDouble(),
            onChanged: (saturation) =>
                addTopicBloc.setSaturation(saturation.toInt()),
          ).pad(),
          'Descriptions'.text().pad(),
          ContentEditor(),
          topic.signs.text()
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomId,
            onPressed: addTopicBloc.saveTopic,
            child: Icon(Icons.save),
          ),
          FloatingActionButton(
            heroTag: randomId,
            onPressed: navigator.back,
            child: Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class ContentEditor extends StatelessWidget {
  const ContentEditor({super.key});
  static final contentTitleRM = RM.injectTextEditing(autoDispose: false);
  @override
  Widget build(BuildContext context) {
    final topic = addTopicBloc.topic;
    return Column(
      children: [
        TextFormField(
          controller: contentTitleRM.controller,
          decoration: InputDecoration(
            labelText: 'Content Title',
          ),
        ).pad(),
        ElevatedButton(
          onPressed: () async {
            final FilePickerResult? pickerResult =
                await FilePicker.platform.pickFiles();
            if (pickerResult == null) return;
            final id = randomId;
            final file = pickerResult.files.first;
            final fileToBeWritten = File(file.path!);
            final newFile =
                File("${(await getApplicationDocumentsDirectory()).path}/$id");
            newFile.writeAsBytesSync(fileToBeWritten.readAsBytesSync());
            print(fileToBeWritten);
            addTopicBloc.addDescription(Content.image(contentTitleRM.text, id));
          },
          child: 'Add Image'.text(),
        ).pad(),
        directoryRM.onAll(
          onError: (error, refreshError) => CircularProgressIndicator(),
          onWaiting: () => CircularProgressIndicator(),
          onData: (directory) {
            return Column(
              children: [
                ...topic.descriptions.map(
                  (eachContent) {
                    if (eachContent.isImage) {
                      return GestureDetector(
                        child: Image.file(
                          File('${directory.path}/${eachContent.path}'),
                        ),
                        onDoubleTap: () =>
                            addTopicBloc.removeDescription(eachContent),
                      );
                    } else if (eachContent.isText) {
                      return Chip(
                        onDeleted: () =>
                            addTopicBloc.removeDescription(eachContent),
                        label: eachContent.text.text(),
                      );
                    } else
                      return 'Invalid Content'.text();
                  },
                ),
              ],
            );
          },
        ),
        TextFormField(
          controller: contentTextRM.controller,
          focusNode: contentTextRM.focusNode,
          onFieldSubmitted: (value) {
            addTopicBloc.addDescription(
              Content.text(contentTitleRM.text, contentTextRM.text),
            );
            contentTextRM.controller.clear();
            contentTitleRM.focusNode.requestFocus();
            contentTitleRM.controller.clear();
          },
        ).pad(),
      ],
    );
  }
}

final contentTextRM = RM.injectTextEditing(autoDispose: false);
