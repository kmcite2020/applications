// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'assets/licenses.dart';
import 'utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  addLicenses();
  await initDefaultImage;
  runApp(
    const MaterialApp(),
  );
}

class Applications extends StatelessWidget {
  const Applications({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      // theme: ref.watch(themeDataProvider.call(dark: false)),
      // themeMode: ref.watch(settingsProvider).themeMode,
      // darkTheme: ref.watch(
      //   themeDataProvider.call(
      //     dark: true,
      //   ),
      // ),
      // home: const Apps(),
    );
  }
}
