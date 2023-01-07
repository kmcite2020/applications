// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'assets/licenses.dart';
import 'models/enums.dart';
import 'settings/dark_theme.dart';
import 'settings/settings.dart';
import 'settings/theme.dart';
import 'utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  addLicenses();
  // RM.navigate.transitionsBuilder = RM.transitions.leftToRight();
  // await RM.storageInitializer(SharedPreferencesStore());
  // await RM.storageInitializer(HiveStorage());
  // await RM.storageInitializer(HiveStorage(name: "SECTIONS"));
  // sectionsRM.deletePersistState();
  await initDefaultImage;
  runApp(const ProviderScope(child: Apps()));
}

class Apps extends HookConsumerWidget {
  const Apps({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(ref),
      themeMode: ref.watch(settingsProvider).themeMode,
      darkTheme: darkThemeData(ref),
      home: Container(),
    );
  }
}
