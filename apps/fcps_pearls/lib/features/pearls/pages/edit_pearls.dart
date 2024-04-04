import '../../../main.dart';

class EditPearlPage extends UI {
  final String id;
  const EditPearlPage({
    super.key,
    required this.id,
  });

  static final dynamic pearlRM = 0;
  // RM.inject<Pearl>(() => throw UnimplementedError());
  @override
  void didMountWidget(BuildContext context) {
    super.didMountWidget(context);
    pearlRM.state = pearlsRM.getByID(id);
  }

  static final updater = (Pearl pearl) => pearlsRM(PearlsEvent.save(pearl));

  @override
  Widget build(BuildContext context) {
    final pearl = pearlRM.state;
    void setPearl(Pearl _pearl) => pearlRM.state = _pearl;
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
      ),
      body: ListView(
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
          ElevatedButton(
            onPressed: pearlsRM.injected.isWaiting
                ? null
                : () {
                    updater(pearl);
                  },
            child: pearlsRM.injected.isWaiting
                ? CircularProgressIndicator().pad()
                : 'Update'.text(textScaleFactor: 2).pad(),
          ).pad(),
        ],
      ),
    );
  }
}
