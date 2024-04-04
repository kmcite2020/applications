import 'package:flutter/material.dart';

import '../core/core.dart';
import 'chapter.dart';

class ChaptersPage extends StatelessWidget {
  const ChaptersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final chapters = Chapter.values;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          final chapter = Chapter.values[index];
          return ElevatedButton(
            onPressed: () {
              navigator.to(Routes.chapter, arguments: chapter);
            },
            child: chapter.description.text(),
          ).pad();
        },
      ),
      floatingActionButton: BackButton(),
    );
  }
}
