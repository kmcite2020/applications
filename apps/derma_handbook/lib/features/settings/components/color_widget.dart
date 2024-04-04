import 'package:derma_handbook/main.dart';

import '../settings.dart';

class ColorWidget extends ReactiveStatelessWidget {
  const ColorWidget({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return GridView.count(
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 4,
      shrinkWrap: true,
      children: Colors.primaries
          .take(settingsManager.settings.areMoreColors ? 18 : 2)
          .map<Widget>(
        (e) {
          return ElevatedButton(
            onPressed: e == settingsManager.settings.materialColor
                ? null
                : () {
                    if (!settingsManager.settings.areMoreColors) {
                      // toggleColorVisibility();
                    }
                    settingsManager.materialColor(e);
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: e[500],
              foregroundColor: e[100],
              disabledBackgroundColor: e.withOpacity(0.3),
              shadowColor: e,
              surfaceTintColor: e,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    settingsManager.settings.borderRadius),
              ),
            ),
            child: ''.text().pad(),
          ).pad();
        },
      ).toList()
        ..insert(
          0,
          Switch(
            value: settingsManager.settings.areMoreColors,
            onChanged: settingsManager.areMoreColorsAvailable,
          ).pad(),
        )
        ..add(
          ElevatedButton(
            onPressed: null,
            child: (Colors.primaries
                        .indexOf(settingsManager.settings.materialColor) +
                    1)
                .toString()
                .text(),
          ).pad(),
        ),
    ).pad();
  }
}
