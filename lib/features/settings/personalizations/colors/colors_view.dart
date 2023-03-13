import '../../../../commons/extensions.dart';
import 'colors_bloc.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../personalizations_bloc.dart';

class ColorsView extends ReactiveStatelessWidget {
  const ColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "COLORS".textScale.pad,
            IconButton(
              onPressed: () => colorsBloc.toggleVisibility(),
              icon: Icon(
                colorsBloc.isSettingsVisible ? Icons.arrow_drop_down : Icons.arrow_right,
              ),
            ).pad,
          ],
        ),
        colorsBloc.isSettingsVisible
            ? Column(
                children: [
                  "CHOOSE YOUR MODE".text,
                  DropdownButtonFormField(
                    value: personalizationsBloc.themeMode,
                    items: ThemeMode.values
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: e.text,
                          ),
                        )
                        .toList(),
                    onChanged: (themeMode) {
                      personalizationsBloc.themeMode = themeMode!;
                    },
                  ).pad,
                  "Transparency Effects".text,
                  "CHOOSE YOUR Color".text,
                  "Show accent on start and taskbar".text,
                  "Show color on windows and titlebars".text,
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
