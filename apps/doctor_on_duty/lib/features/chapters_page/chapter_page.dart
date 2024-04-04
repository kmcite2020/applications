// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:doctor_on_duty/features/core/core.dart';
import 'package:doctor_on_duty/features/topics/topics_manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../topics/topics.dart';
import 'chapter.dart';

class ChapterPage extends ReactiveStatelessWidget {
  const ChapterPage({super.key});
  static final _topicRM = RM.inject<Topic>(() => throw UnimplementedError());
  @override
  Widget build(BuildContext context) {
    final Chapter chapter = context.routeData.arguments;
    final List<Topic> topicsByChapter = topicsManager.filterByChapter(chapter);
    return Scaffold(
      appBar: AppBar(
        title: chapter.description.text(),
      ),
      body: ListView.builder(
        itemCount: topicsByChapter.length,
        itemBuilder: (context, index) {
          return _topicRM.inherited(
            builder: (context) {
              final topic = _topicRM.of(context);
              return ListTile(
                title: topic.text(),
                onTap: () {
                  navigator.to(Routes.topicRead, arguments: topic);
                },
              );
            },
            stateOverride: () => topicsByChapter[index],
          );
        },
      ),
    );
  }
}

class TopicUI extends StatelessWidget {
  const TopicUI({
    Key? key,
    required this.topic,
  }) : super(key: key);
  final Topic topic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: topic.name.text(),
      ),
    );
  }
}
