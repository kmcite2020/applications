import 'main.dart';

export 'dart:convert';
export 'dart:developer' hide Flow;
export 'dart:io';

export 'package:colornames/colornames.dart';
export 'package:file_picker/file_picker.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:manager/manager.dart' hide Flow;
export 'package:money/features/app.dart';
export 'package:money/features/core/data.dart';
export 'package:money/features/core/font_family.dart';
export 'package:money/features/dashboard/dashboard.dart';
export 'package:money/features/persons/person_page.dart';
export 'package:money/features/persons/persons.dart';
export 'package:money/features/persons/persons_page.dart';
export 'package:money/features/settings/settings.dart';
export 'package:money/features/settings/settings_page.dart';
export 'package:money/features/transactions/transaction_page.dart';
export 'package:money/features/transactions/transactions.dart';
export 'package:money/features/transactions/transactions_page.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  await RM.storageInitializer(HiveStorage());
  runApp(App());
}
