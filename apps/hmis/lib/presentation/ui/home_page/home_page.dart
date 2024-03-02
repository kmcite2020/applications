import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hmis/presentation/ui/widgets/custom_app_bar.dart';
import 'package:manager/manager.dart';

import '../../../main.dart';
import '../../presentation.dart';

class HomePage extends UI {
  const HomePage({super.key});

  @override
  void didMountWidget(BuildContext context) {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'HMIS',
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: .3,
            child: Align(
              child: FaIcon(
                FontAwesomeIcons.hospital,
                size: backgroundIconSize,
              ),
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: Align(
              child: settingsBloc.getHospitalName.text(),
            ),
          ),
          Opacity(
            opacity: .9,
            child: ListView(
              children: [
                FilledButton.icon(
                  onPressed: () => mainPagesRM(MainPages.patients),
                  icon: Icon(FontAwesomeIcons.route),
                  label: Align(
                    alignment: Alignment.centerLeft,
                    child: 'Patients'.text(),
                  ),
                ).pad(),
                FilledButton.icon(
                  onPressed: () => mainPagesRM(MainPages.investigatons),
                  icon: Icon(FontAwesomeIcons.fileInvoice),
                  label: Align(
                    alignment: Alignment.centerLeft,
                    child: 'Investigations'.text(),
                  ),
                ).pad(),
                FilledButton.icon(
                  onPressed: () => mainPagesRM(MainPages.settings),
                  icon: Icon(FontAwesomeIcons.confluence),
                  label: Align(
                    alignment: Alignment.centerLeft,
                    child: 'Settings'.text(),
                  ),
                ).pad(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
