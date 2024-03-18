import 'package:opthalmology/features/dashboard/dashboard.dart';

import '../../main.dart';

final router = NavigationBuilder.create(
  initialLocation: Routes.home(),
  routes: {
    Routes.home(): (data) => const DashboardPage(),
    Routes.questions(): (data) => const QuestionsPage(),
    Routes.question(): (data) => const QuestionsPage(),
    Routes.configurations(): (data) => const SettingsPage(),
    Routes.quizzes(): (data) => QuizzesPage(),
    Routes.takeQuiz(): (data) => TakeQuizPage(),
  },
);

enum Routes {
  home('/'),
  configurations('/configurations'),
  questions('/questions'),
  question('/question'),
  quizzes('/quizzes'),
  takeQuiz('/takeQuiz');

  final String path;
  const Routes(this.path);
  String call() => path;
}
