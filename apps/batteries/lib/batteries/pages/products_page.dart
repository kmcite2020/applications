import 'package:batteries/batteries/pages/settings_page.dart';
import 'package:batteries/main.dart';

import '../../battery/battery.dart';

class BatteriesStorePage extends UI {
  const BatteriesStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'HOME'.text(),
        actions: [
          IconButton.outlined(
            onPressed: () {
              RM.navigate.to(
                SettingsPage(),
              );
            },
            icon: Icon(Icons.settings),
          ).pad(),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: batteries()
            .cache
            .values
            .map(
              (e) => GridTile(
                header: e.brandName.text(),
                footer: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_task),
                    ).pad(),
                  ],
                ),
                child: e.price.text().center(),
              ),
            )
            .toList(),
      ),
    );
  }
}
