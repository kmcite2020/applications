import 'package:flutter/material.dart';
import 'package:doctor_on_duty/features/chapters_page/chapter.dart';
import 'package:doctor_on_duty/features/core/core.dart';
import 'package:doctor_on_duty/features/topics/topics_manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../features/topics/topics.dart';

class TopicDetailsPage extends ReactiveStatelessWidget {
  final String id;
  TopicDetailsPage({required this.id});
  static final _topicRM = RM.inject<Topic>(
    () => throw UnimplementedError(),
    sideEffects: SideEffects(
      onSetState: (snap) {
        topicsManager.setTopic((topic) => snap.state);
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return _topicRM.inherited(
      stateOverride: () => topicsManager.id(id) ?? Topic.init(),
      builder: (context) {
        final topic = _topicRM.of(context);
        final topicRM = _topicRM(context);
        void setTopic(Topic Function(Topic topic) topicModifier) {
          topicRM.state = topicModifier(topic);
          _topicRM.refresh();
        }

        void setName(String name) {
          setTopic((topic) => topic.copyWith(name: name));
        }

        void setChapter(Chapter? chapter) {
          setTopic((topic) => topic.copyWith(chapter: chapter!));
        }

        return Scaffold(
          appBar: AppBar(
            title: topic.name.text(),
          ),
          body: Column(
            children: [
              TextFormField(
                initialValue: topic.name,
                onChanged: setName,
              ).pad(),
              DropdownButtonFormField(
                value: topic.chapter,
                items: Chapter.values
                    .map(
                      (eachChapter) => DropdownMenuItem(
                        value: eachChapter,
                        child: eachChapter.text(),
                      ),
                    )
                    .toList(),
                onChanged: setChapter,
              ).pad(),
              topic.text(),
            ],
          ),
        );
      },
    );
  }
}
