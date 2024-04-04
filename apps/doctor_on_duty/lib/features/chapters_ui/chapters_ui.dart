import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../chapters_page/chapter.dart';
import '../core/core.dart';

class ChaptersUI extends ReactiveStatelessWidget {
  static const path = '/chapters';

  const ChaptersUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...Chapter.values.map(
            (e) => ElevatedButton(
              onPressed: () {
                navigator.to(Routes.chapters, arguments: e);
              },
              child: e.name.text(),
            ).pad(),
          ),
        ],
      ),
    );
  }
}
