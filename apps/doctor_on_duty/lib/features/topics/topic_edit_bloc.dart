import 'package:doctor_on_duty/features/topics/topics_manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'topics.dart';

class TopicEditBloc {
  TopicEditBloc(this.id);
  final String id;
  late final topicRM = RM.inject(
    () {
      return topicsManager.id(id);
    },
  );

  Topic? get topic {
    return topicRM.state;
  }

  void dispose() {
    topicRM.dispose();
  }
}
