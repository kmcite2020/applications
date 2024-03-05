import 'package:batteries/batteries/pages/batteries_stock_page.dart';
import 'package:batteries/main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              RM.navigate.to(BatteriesStockPage());
            },
            child: 'Batteries Stock'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
