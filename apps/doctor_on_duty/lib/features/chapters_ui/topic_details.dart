import 'package:flutter/material.dart';
import 'package:doctor_on_duty/features/core/core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../topics/topics.dart';

class TopicDetails extends ReactiveStatelessWidget {
  static String path = '/topic';

  const TopicDetails({
    required this.topic,
  });
  final Topic topic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          topic.name.text(2).pad(),
          TextFormField(
            initialValue: topic.name,
            onChanged: (value) {},
          ).pad(),
          Divider(),
          topic.definition.text().pad(),
          topic.causes.text().pad(),
          topic.complications.text().pad(),
          topic.descriptions.text().pad(),
          topic.diagnosis.text().pad(),
        ],
      ),
    );
  }
}
