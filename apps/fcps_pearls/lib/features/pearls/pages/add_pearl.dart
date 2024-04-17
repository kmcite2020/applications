import '../../../main.dart';

class AddPearlPage extends UI {
  final pearlRM = Simple(Pearl());
  // RM.inject(Pearl.new);
  Pearl get pearl => pearlRM.state;
  void setPearl(Pearl _) => pearlRM.state = _;

  AddPearlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton().pad(),
        title: 'Pearl - New'.text(),
      ),
      body: ListView(
        children: [
          'Create Pearl'.text(textScaleFactor: 3).pad(),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Statement',
            ),
            onChanged: (statement) {
              setPearl(pearl.copyWith(statement: statement));
            },
            maxLines: 6,
            minLines: 2,
          ).pad(),
          TextField(
            decoration: InputDecoration(
              labelText: 'Answer',
            ),
            onChanged: (answer) {
              setPearl(pearl.copyWith(answer: answer));
            },
            maxLines: 6,
            minLines: 3,
          ).pad(),
          TextField(
            decoration: InputDecoration(
              labelText: 'Explanation',
            ),
            onChanged: (explanation) {
              setPearl(pearl.copyWith(explanation: explanation));
            },
            maxLines: 6,
            minLines: 2,
          ).pad(),
          ElevatedButton(
            onPressed: () {
              // navigator.back(
              //   () async {
              //     await pearlsRM.createPearl(pearl.copyWith(id: randomID));
              //     return 0;
              //   }(),
              // );
            },
            child: 'Save Pearl'.text(textScaleFactor: 2).pad(),
          ).pad(),
        ],
      ),
    );
  }
}
