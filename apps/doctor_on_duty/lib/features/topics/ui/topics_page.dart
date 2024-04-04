import 'package:flutter/material.dart';
import 'package:doctor_on_duty/features/core/core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../features/topics/topics.dart';
import '../topics_manager.dart';

final _topicRM = RM.inject<Topic>(() => throw UnimplementedError());

class TopicsPage extends ReactiveStatelessWidget {
  const TopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Topics ${topicsManager.topics.length}'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: topicsManager.topics.length,
        itemBuilder: (context, index) {
          return _topicRM.inherited(
            stateOverride: () => topicsManager.topics[index],
            builder: (context) {
              final topic = _topicRM.of(context);
              return ListTile(
                title: topic.name.text(),
                subtitle: Column(
                  children: [
                    topic.chapter.description.text(),
                  ],
                ),
                onTap: () => navigator.to(Routes.topic, arguments: topic.id),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => topicsManager.deleteTopic(topic),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: ButtonBar(
        children: [
          BackButton(),
          FloatingActionButton(
            heroTag: randomId,
            onPressed: () {
              navigator.to(Routes.addTopic);
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
