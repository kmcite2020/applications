import 'package:apps/commons/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../background_bloc.dart';

class AllColorsView extends ReactiveStatelessWidget {
  const AllColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      children: [
        ...Colors.primaries.map(
          (e) => ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: e[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(e == backgroundBloc.color ? 16 : 8),
              ),
            ),
            onPressed: () => backgroundBloc.changeToColor(e),
            child: Icon(e == backgroundBloc.color ? Icons.done : Icons.question_mark),
          ).pad,
        ),
      ],
    );
  }
}
