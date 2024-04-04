import '../../../main.dart';
import '../authenticated.dart';

class StudioModePage extends UI {
  const StudioModePage({super.key});

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
          title: 'Studio Mode'.text(),
          bottom: TabBar(
            isScrollable: true,
            labelColor: settingsRM().materialColor.shade200,
            tabs: pearlsRM()
                .pearlsCache
                .values
                .map(
                  (pearl) => Tab(
                    text:
                        '${pearlsRM().pearlsCache.values.toList().indexOf(pearl) + 1}',
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarViewOfPearls(),
      ),
    );
  }
}

class TabBarViewOfPearls extends UI {
  const TabBarViewOfPearls({super.key});
  static late final dynamic _pearlRM;
  //  RM.inject<Pearl>(() => throw UnimplementedError());
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: pearlsRM().pearlsCache.values.map<Widget>(
        (_pearl) {
          return _pearlRM.inherited(
            stateOverride: () => _pearl,
            builder: (context) {
              final pearl = _pearlRM.of(context);
              final pearlRM = _pearlRM(context);
              void setPearl(Pearl _) => pearlRM.state = _;
              return Container(
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: [
                    TextFormField(
                      initialValue: pearl.statement,
                      decoration: InputDecoration(
                        labelText: 'Statement',
                      ),
                      onChanged: (statement) {
                        setPearl(pearl.copyWith(statement: statement));
                      },
                      maxLines: 6,
                      minLines: 2,
                    ).pad(),
                    TextFormField(
                      initialValue: pearl.answer,
                      decoration: InputDecoration(
                        labelText: 'Answer',
                      ),
                      onChanged: (answer) {
                        setPearl(pearl.copyWith(answer: answer));
                      },
                      maxLines: 6,
                      minLines: 3,
                    ).pad(),
                    TextFormField(
                      initialValue: pearl.explanation,
                      decoration: InputDecoration(
                        labelText: 'Explanation',
                      ),
                      onChanged: (explanation) {
                        setPearl(
                          pearl.copyWith(explanation: explanation),
                        );
                      },
                      maxLines: 6,
                      minLines: 2,
                    ).pad(),
                    ElevatedButton.icon(
                      onPressed: pearlsRM.injected.isWaiting || pearl == _pearl
                          ? null
                          : () {
                              pearlsRM(PearlsEvent.save(pearl));
                            },
                      label: Row(
                        children: [
                          pearl == _pearl
                              ? "Updated".text(textScaleFactor: 2).pad()
                              : pearlsRM.injected.isWaiting
                                  ? 'Updating'.text(textScaleFactor: 2).pad()
                                  : 'Update'.text(textScaleFactor: 2).pad(),
                        ],
                      ),
                      icon: Row(
                        children: [
                          pearl == _pearl
                              ? Icon(Icons.done)
                              : pearlsRM.injected.isWaiting
                                  ? CircularProgressIndicator()
                                  : Icon(Icons.update),
                        ],
                      ),
                    ).pad(),
                  ],
                ).pad(),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
