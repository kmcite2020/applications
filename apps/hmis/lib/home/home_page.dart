import 'package:hmis/main.dart';

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
        leading: const SizedBox(),
        title: 'HMIS',
      ),
      body: Stack(
        children: [
          const Opacity(
            opacity: .3,
            child: Align(
              child: FaIcon(
                FontAwesomeIcons.hospital,
                size: 150,
              ),
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: Align(
              child: settings.hospitalName.text(),
            ),
          ),
          Opacity(
            opacity: .9,
            child: ListView(
              children: [
                FilledButton.icon(
                  onPressed: () => setMainPages(MainPages.patients),
                  icon: const Icon(FontAwesomeIcons.route),
                  label: Align(
                    alignment: Alignment.centerLeft,
                    child: 'Patients'.text(textScaleFactor: 2).pad(),
                  ),
                ).pad(),
                FilledButton.icon(
                  onPressed: () => setMainPages(MainPages.investigations),
                  icon: const Icon(FontAwesomeIcons.fileInvoice),
                  label: Align(
                    alignment: Alignment.centerLeft,
                    child: 'Investigations'.text(textScaleFactor: 2).pad(),
                  ),
                ).pad(),
                FilledButton.icon(
                  onPressed: () => setMainPages(MainPages.settings),
                  icon: const Icon(FontAwesomeIcons.confluence),
                  label: Align(
                    alignment: Alignment.centerLeft,
                    child: 'Settings'.text(textScaleFactor: 2).pad(),
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
