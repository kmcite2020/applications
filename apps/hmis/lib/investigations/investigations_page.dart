import 'package:hmis/investigations/investigations_data.dart';
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
              title: investigationEntry.value.name.text(textScaleFactor: 1.2),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FilledButton(
            onPressed: () {
              investigationsRM.add(Investigation());
            },
            child: 'Add New Investigation'.text(),
          ).pad(),
          FilledButton(
            onPressed: investigationsBuiltIn.every(
              investigationsRM().cache.values.contains,
            )
                ? null
                : () {
                    investigationsBuiltIn.forEach(investigationsRM.add);
                  },
            child: 'Add Intrinsic Investigations'.text(),
          ).pad(),
        ],
      ),
    );
  }
}