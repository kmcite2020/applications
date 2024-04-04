import 'package:doctor_on_duty/features/chapters_page/chapter.dart';
import 'package:doctor_on_duty/features/topics/topics.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final topicsManager = TopicsManager();

class TopicsManager {
  final topicsRM = RM.inject(() => Topics.init());
  Topics get _topics => topicsRM.state;
  List<Topic> get topics => _topics.topics.values.toList();

  void setTopics(Topics Function(Topics topics) topicsModifier) {
    topicsRM.state = topicsModifier(_topics);
    topicsRM.notify();
  }

  void setTopic(Topic Function(Topic topic) topicModifier) {
    setTopics(
      (topics) {
        final topic = topicModifier(Topic.init());
        final _ = Map.of(topics.topics)..[topic.id] = topic;
        return topics.copyWith(topics: _);
      },
    );
  }

  void deleteTopic(Topic topic) {
    setTopics(
      (topics) {
        final _ = Map.of(topics.topics)..remove(topic.id);
        return topics.copyWith(topics: _);
      },
    );
  }

  Topic? id(String id) {
    return _topics.topics[id];
  }

  List<Topic> filterByChapter(Chapter chapter) => topics
      .where(
        (element) => element.chapter == chapter,
      )
      .toList();
}
