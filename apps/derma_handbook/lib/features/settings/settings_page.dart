import 'package:colornames/colornames.dart';
import 'package:derma_handbook/main.dart';
import 'settings.dart';
import 'data_management.dart';
import 'components/utilities_widget.dart';

class SettingsPage extends ReactiveStatelessWidget {
  static const path = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          const UtilitiesWidget(),
          ElevatedButton(
            onPressed: () async {
              // for (final x in await initial()) {
              //   DiseasesMutations.addDisease(x);
              // }
            },
            child: 'Add Built-in Diseases to List'.text(),
          ).pad(),
          const DataManagementWidget(),
          DropdownButtonFormField(
            value: settingsManager.settings.themeMode,
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: settingsManager.themeMode,
          ).pad(),
          DropdownButtonFormField(
            value: settingsManager.settings.materialColor,
            items: Colors.primaries
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: settingsManager.materialColor,
          ).pad(),
          // const BorderRadiusWidget(),
          // 'height'.text(2).pad().center(),
          // Slider(
          //   value: settingsManager.settings.height,
          //   onChanged: settingsManager.height,
          //   min: 0,
          //   max: 120,
          // ).pad(),
          // const ElevationWidget(),
          // const PaddingWidget(),
        ],
      ),
    );
  }
}
