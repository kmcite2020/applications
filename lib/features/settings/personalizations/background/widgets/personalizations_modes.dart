import 'package:apps/commons/extensions.dart';
import 'package:flutter/material.dart';

import '../background_bloc.dart';

class PersonalizeModesView extends StatelessWidget {
  const PersonalizeModesView({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: backgroundBloc.currentMode,
      items: backgroundBloc.modes
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: e.text,
            ),
          )
          .toList(),
      onChanged: (value) {
        backgroundBloc.changeToMode(value);
      },
    ).pad;
  }
}
