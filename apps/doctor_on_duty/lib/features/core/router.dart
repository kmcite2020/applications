part of 'core.dart';

final navigator = RM.injectNavigator(
  routes: {
    Routes.home: (data) => const HomePage(),
    Routes.chapters: (data) => const ChaptersPage(),
    Routes.chapter: (data) => const ChapterPage(),
    Routes.addTopic: (data) => const AddTopicPage(),
    Routes.topics: (data) => const TopicsPage(),
    Routes.topic: (data) => TopicDetailsPage(id: data.arguments),
    Routes.topicRead: (data) => TopicUI(topic: data.arguments),
    Routes.settings: (data) => const SettingsPage(),
    Routes.search: (data) => const SearchPage(),
  },
);

abstract class Routes {
  static const home = '/';
  static const chapters = '/chapters';
  static const chapter = '/chapter';

  static const addTopic = '/add_topic';
  static const topics = '/topics';
  static const topic = '/topic';
  static const topicRead = '/topicRead';
  static const settings = '/settings';
  static const search = '/search';
}

class LeadingBackButton extends StatelessWidget {
  const LeadingBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return navigator.canPop ? BackButton().pad() : SizedBox();
  }
}
