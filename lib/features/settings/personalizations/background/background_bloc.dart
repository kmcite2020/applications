// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:apps/features/settings/personalizations/models/models.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'background_model.dart';

class BackgroundBloc {
  MaterialColor get color => bgm.colorX.color;
  void changeToColor(MaterialColor value) => bgm = bgm.copyWith(colorX: MaterialColorX(color: value));

  bool get isVisible => bgm.isVisible;
  void toggleIsVisible() => bgm = bgm.copyWith(isVisible: !isVisible);

  List<PersonalizeMode> modes = PersonalizeMode.values;
  PersonalizeMode get currentMode => bgm.mode;
  void changeToMode(PersonalizeMode? value) => bgm = bgm.copyWith(mode: value);
  bool get isColorMode => currentMode == PersonalizeMode.color;
  bool get isPictureMode => currentMode == PersonalizeMode.picture;

  final _backgroundModel = RM.inject(
    () => BackgroundModel.init,
    persist: () => PersistState(
      key: 'background',
      toJson: (s) => s.toJson(),
      fromJson: (json) => BackgroundModel.fromJson(json),
    ),
  );
  BackgroundModel get bgm => _backgroundModel.state;
  set bgm(BackgroundModel value) => _backgroundModel.state = value;

  final recentPhotosListRM = RM.inject<List<String>>(
    () => [],
    persist: () => PersistState(
      key: 'recents',
      toJson: (s) => jsonEncode(s),
      fromJson: (json) => List.from(jsonDecode(json)),
    ),
  );

  List<String> get recentPhotosList => recentPhotosListRM.state;
  void addPhotoToRecents(String value) => recentPhotosListRM.state = [value, ...recentPhotosList];

  late final currentBackground = RM.injectFormField(backgroundImage);
  String get backgroundImage => bgm.backgroundImageX.image;
  void changeToBackground(String value) => bgm = bgm.copyWith(
        backgroundImageX: BackgroundImageX(image: value),
      );

  void pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: false,
      withData: true,
    );
    if (result != null) {
      var fileBytes = result.files.first.bytes;
      // var fileName = result.files.first.name;
      // print(fileBytes);
      changeToBackground(base64Encode(fileBytes!.toList()));
      addPhotoToRecents(backgroundImage);
    }
  }
}

final BackgroundBloc backgroundBloc = BackgroundBloc();

enum PersonalizeMode {
  picture,
  color;

  toMap() => {"mode": index};
  static PersonalizeMode fromMap(map) {
    return PersonalizeMode.values[map['mode']];
  }
}
