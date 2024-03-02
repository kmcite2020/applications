import 'package:manager/manager.dart';
import '../../../shared/extensions.dart';
import '../../../shared/ui/back_floating_button.dart';
import '../../blocs/configuration_bloc.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const BackFloatingButton(),
      appBar: AppBar(
        title: 'Settings'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settingsRM().themeMode,
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: eachThemeMode.name.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: (themeMode) {},
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().materialColor,
            items: Colors.primaries.map(
              (e) {
                return DropdownMenuItem(
                  value: e,
                  child: e.colorName.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: (materialColor) {},
          ).pad(),
          MySlider(
            value: settingsRM().padding,
            onChanged: (padding) {},
            name: 'Padding',
            min: 5,
            max: 12,
          ).pad(),
          MySlider(
            value: settingsRM().borderRadius,
            onChanged: (borderRadius) {},
            name: 'Border Radius',
            min: 4,
            max: 30,
          ).pad(),
        ],
      ),
    );
  }
}
