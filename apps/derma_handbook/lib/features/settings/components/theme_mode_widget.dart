import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../settings.dart';

class ThemeModeWidget extends ReactiveStatelessWidget {
  const ThemeModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      physics: const BouncingScrollPhysics(),
      children: ThemeMode.values
          .map(
            (e) => ElevatedButton(
              onPressed: settingsManager.settings.themeMode == e
                  ? null
                  : () {
                      settingsManager.themeMode(e);
                    },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        settingsManager.settings.borderRadius)),
              ),
              child: e.name.toUpperCase().text(),
            ).pad(),
          )
          .toList(),
    ).pad();
  }
}
