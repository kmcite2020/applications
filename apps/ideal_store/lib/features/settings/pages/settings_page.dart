import '../../../main.dart';

class SettingsPage extends UI {
  static const path = '/configuration';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 'Settings'.text(),
        actions: [
          const BackButton().pad(),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          'Customers'.text(textScaleFactor: 4).pad(),
          ElevatedButton(
            onPressed: () {
              // RM.resetStates();
            },
            child: 'Reset All States'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: customersRM().cache.isEmpty
                ? null
                : () => customersRM.deleteAllCustomers(),
            child: 'Delete All Customers'.text(),
          ).pad(),
          'Products'.text(textScaleFactor: 4).pad(),
          ElevatedButton(
            onPressed: productsRM().cache.values.isEmpty
                ? null
                : () {
                    productsRM(Products());
                  },
            child: 'Delete All Products'.text(),
          ).pad(),
          const ThemeModesUI(),
          const MaterialColorsUI(),
          const FontsUI(),
        ],
      ),
    );
  }
}
