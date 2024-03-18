import 'package:opthalmology/main.dart';
export 'package:opthalmology/features/quizzes/quiz.dart';
export 'package:navigation_builder/navigation_builder.dart';
export 'package:colornames/colornames.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart' hide Page, Flow;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:manager/manager.dart';
export 'package:isar/isar.dart';
export 'package:opthalmology/features/flash_cards/flashes.dart';
export 'package:opthalmology/features/flash_cards/folder.dart';
export 'package:opthalmology/features/app.dart';
export 'package:opthalmology/features/core/navigator.dart';
export 'package:opthalmology/features/questions/questions_page.dart';
export 'package:opthalmology/features/quizzes/quizzes_page.dart';
export 'package:opthalmology/features/settings/configuration_page.dart';
export 'package:opthalmology/features/settings/settings.dart';
export 'package:opthalmology/features/settings/themes.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';
export 'package:opthalmology/features/questions/question.dart';
export 'package:opthalmology/features/questions/questions_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  // await RM.deleteAllPersistState();
  runApp(
    App(),
  );
}
