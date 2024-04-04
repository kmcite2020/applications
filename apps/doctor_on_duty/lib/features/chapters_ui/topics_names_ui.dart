import 'package:flutter/material.dart';
import 'package:doctor_on_duty/features/core/core.dart';

import '../topics/topics.dart';

class TopicsNameUI extends StatelessWidget {
  const TopicsNameUI({
    Key? key,
    required this.topics,
  }) : super(key: key);
  final List<Topic> topics;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: topics.map(
        (e) {
          return ElevatedButton(
            onPressed: () {},
            child: e.name.text(),
          );
        },
      ).toList(),
    );
  }
}
