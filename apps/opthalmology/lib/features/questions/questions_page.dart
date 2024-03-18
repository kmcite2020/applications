import '../../main.dart';

class QuestionsPage extends UI {
  static const path = 'questions';
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (questionsManager.waiting) return CircularProgressIndicator().center();
    return Scaffold(
      appBar: AppBar(
        title: 'Questions'.text(),
        actions: const [
          QuestionsAmountCard(),
        ],
      ),
      body: const QuestionsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          questionsManager.addQuestion(Question());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class QuestionsList extends ReactiveStatelessWidget {
  const QuestionsList({super.key});

  @override
  Widget build(BuildContext context) {
    final QuestionsState questionsState = questionsManager.questionsState;
    return ListView.builder(
      itemCount: questionsState.cache.length,
      itemBuilder: (context, index) {
        final question = questionsState.cache.values.toList()[index];
        Widget _question(Question question) {
          return Card(
            child: ListTile(
              title: question.text(),
            ).pad(),
          );
        }

        if (index == 0) {
          return Column(
            children: [
              switch (questionsState.questionsStatus) {
                QuestionsStatus.loading =>
                  const CircularProgressIndicator().pad(),
                QuestionsStatus.success => const CircleAvatar().pad(),
                QuestionsStatus.error => ErrorWidget('exception').pad(),
              },
              _question(question)
            ],
          );
        }
        return _question(question);
      },
    );
  }
}

class QuestionsAmountCard extends ReactiveStatelessWidget {
  const QuestionsAmountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: questionsManager.questionsState.cache.length.text().pad(),
    );
  }
}

class CreateQuizCard extends ReactiveStatelessWidget {
  const CreateQuizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: 'Create'.text(),
    );
  }
}
