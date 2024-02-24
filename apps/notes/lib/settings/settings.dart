import 'package:extensions/main.dart';
import 'package:manager/manager.dart';
import 'package:notes/drawer/drawer.dart';

enum ViewMode { list, grid }

final viewModeRM = RM.inject(ViewMode.grid);

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(),
      body: ListView(
        children: [
          DropdownButtonFormField(
            items: ViewMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: viewModeRM.call,
          ).pad(),
        ],
      ),
    );
  }
}
