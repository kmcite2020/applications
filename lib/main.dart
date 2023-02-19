// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:apps/views/apps.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'assets/licenses.dart';
import 'controllers/settings.dart';
import 'controllers/theme.dart';
import 'utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  addLicenses();
  await initDefaultImage;
  runApp(
    ProviderScope(
      child: HookConsumer(
        builder: (_, ref, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ref.watch(themeDataProvider.call(dark: false)),
            themeMode: ref.watch(settingsProvider).themeMode,
            darkTheme: ref.watch(
              themeDataProvider.call(
                dark: true,
              ),
            ),
            home: Apps(),
          );
        },
      ),
    ),
  );
}
