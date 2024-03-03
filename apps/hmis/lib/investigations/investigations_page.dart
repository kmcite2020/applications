import 'package:hmis/main.dart';

class InvestigationsPage extends UI {
  const InvestigationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Investigations'),
      body: ListView(
        children: investigationsRM().cache.entries.map(
          (investigationEntry) {
            return ListTile(
              title: investigationEntry.value.name.text(textScaleFactor: 1.6),
              trailing: IconButton.outlined(
                onPressed: () {
                  investigationsRM.remove(investigationEntry.value);
                },
                icon: investigationEntry.value.price.text(),
              ),
            );
          },
        ).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          investigationsRM.add(Investigation());
        },
      ),
    );
  }
}
