import '../../../main.dart';

class HomePage extends UI {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'HOME'.text(),
        actions: [
          IconButton(
            onPressed: () => navigator.to(const SettingsPage()),
            icon: const Icon(Icons.settings),
          ).pad()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            'Information System'
                .text(
                  textScaleFactor: 2,
                )
                .borderizeGradiently(),
            'These are the patients I have attended in my duties'
                .text()
                .pad()
                .borderizeGradiently(),
            GestureDetector(
              onTap: () => navigator.to(
                const PatientsPage(),
              ),
              child: patients.length
                  .text(
                    textScaleFactor: 4,
                  )
                  .borderizeGradiently(),
            ),
            GestureDetector(
              onTap: () {
                navigator.to(
                  const RosterPage(),
                );
              },
              child: const UpcomingDuties(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didUnmountWidget() {
    userManager.dispose();
    super.didUnmountWidget();
  }
}
