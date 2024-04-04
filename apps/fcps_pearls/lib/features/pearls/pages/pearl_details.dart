import 'package:manager/manager.dart';

import '../../../main.dart';

class PearlDetailsPage extends UI {
  final String id;
  const PearlDetailsPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return PearlBuilder(
        id: id,
        builder: (pearl) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  pearlsPageRM(
                    pearlsPageRM().copyWith(
                      page: PearlPage.pearls,
                    ),
                  );
                },
                icon: Icon(Icons.dashboard_sharp),
              ).pad(),
              title: pearl.hashCode.text(),
              actions: [
                IconButton(
                  onPressed: () {
                    pearlsPageRM(
                      pearlsPageRM()
                          .copyWith(page: PearlPage.editPearl, id: id),
                    );
                  },
                  icon: Icon(Icons.edit),
                ).pad()
              ],
            ),
            body: ListView(
              children: [
                pearl.statement.text(textScaleFactor: 2).pad(),
                SizedBox(height: 8),
                ElevatedButton.icon(
                  onPressed: pearl.answer.isEmpty ? null : answerRM.toggle,
                  icon: Icon(
                    answerRM() ? Icons.visibility_off : Icons.visibility,
                  ),
                  label: Row(
                    children: [
                      answerRM() ? 'Hide Answer'.text() : 'Show Answer'.text(),
                    ],
                  ),
                ).pad(
                  custom: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                if (answerRM()) pearl.answer.text(textScaleFactor: 2).pad(),
                ElevatedButton.icon(
                  onPressed:
                      pearl.explanation.isEmpty ? null : explanationRM.toggle,
                  icon: Icon(
                    explanationRM() ? Icons.visibility_off : Icons.visibility,
                  ),
                  label: Row(
                    children: [
                      explanationRM()
                          ? 'Hide Explanation'.text()
                          : 'Show Explanation'.text(),
                    ],
                  ),
                ).pad(
                  custom: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                if (explanationRM())
                  pearl.explanation.text(textScaleFactor: 2).pad(),
              ],
            ),
          );
        });
  }

  static final answerRM = RM(() => false);
  static final explanationRM = RM(() => false);
}

class PearlBuilder extends UI {
  const PearlBuilder({
    super.key,
    required this.id,
    required this.builder,
  });
  final String id;
  final Widget Function(Pearl pearl) builder;
  @override
  Widget build(BuildContext context) {
    final pearl = pearlsRM().firstWhere((element) => element.id == id);
    return builder(pearl);
  }
}
