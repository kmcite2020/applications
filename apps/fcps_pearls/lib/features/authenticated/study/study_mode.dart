import '../../../main.dart';
import '../authenticated.dart';

class StudyModePage extends UI {
  const StudyModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pearlsRM().length,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              authenticatedPageRM(AuthenticatedPage.home);
            },
            icon: Icon(Icons.home),
          ),
          title: 'Study Mode'.text(),
          bottom: TabBar(
            indicatorColor: settingsRM().materialColor.shade900,
            labelColor: settingsRM().materialColor.shade100,
            tabs: pearlsRM().pearlsCache.values.map(
              (pearl) {
                final i = pearlsRM().pearlsCache.values.toList().indexOf(pearl);
                return Tab(
                  text: (i + 1).toString(),
                );
              },
            ).toList(),
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: pearlsRM().pearlsCache.values.map(
            (pearl) {
              return Scaffold(
                body: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    pearl.statement.isEmpty
                        ? SizedBox()
                        : 'statement'.text().pad(),
                    pearl.statement.text(textScaleFactor: 2).pad(),
                    pearl.answer.isEmpty ? SizedBox() : 'answer'.text().pad(),
                    pearl.answer.text(textScaleFactor: 2).pad(),
                    pearl.explanation.isEmpty
                        ? SizedBox()
                        : 'explanation'.text().pad(),
                    pearl.explanation.text(textScaleFactor: 2).pad(),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
