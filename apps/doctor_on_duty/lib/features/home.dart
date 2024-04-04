import 'package:flutter/material.dart';
import 'package:doctor_on_duty/features/chapters_page/chapter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'core/core.dart';
import 'topics/topics_manager.dart';

class HomePage extends ReactiveStatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DOCTOR ON DUTY'.text(),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () => navigator.to(Routes.topics),
            child: "Topics".text(),
          ).pad(),
          'Chapters'.text().pad(),
          Chapter.values.length.text(4).pad(),
          'Topics'.text().pad(),
          topicsManager.topics.length.text(4).pad(),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomId,
            onPressed: () => navigator.to(Routes.chapters),
            child: Icon(Icons.chat_sharp),
          ),
          FloatingActionButton(
            heroTag: randomId,
            onPressed: () => navigator.to(Routes.search),
            child: Icon(Icons.search),
          ),
          FloatingActionButton(
            heroTag: randomId,
            onPressed: () => navigator.to(Routes.settings),
            child: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
