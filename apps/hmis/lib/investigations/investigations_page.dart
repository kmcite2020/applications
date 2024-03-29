import 'package:hmis/main.dart';

class InvestigationsPage extends UI {
  const InvestigationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Investigations'),
      body: ListView(
        children: investigations.cache.entries.map(
          (investigationEntry) {
            return ListTile(
              title: investigationEntry.value.name.text(textScaleFactor: 1.2),
              trailing: IconButton.outlined(
                onPressed: () {
                  removeInvestigation(investigationEntry.value);
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
              addInvestigation(const Investigation());
            },
            child: 'Add New Investigation'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
