import 'package:opthalmology/features/flash_groups/flash_cards/flash_cards_page.dart';

import '../../main.dart';

final editingRM = RM.inject(() => false);
bool editing([bool? _editing]) =>
    _editing != null ? editingRM.state = _editing : editingRM.state;

class FlashCardUI extends UI {
  const FlashCardUI({super.key, required this.flashCardId});
  final String flashCardId;
  @override
  Widget build(BuildContext context) {
    return FlashCardBuilder(
      flashCardId: flashCardId,
      builder: (flashCard) {
        if (flashCard == null) return CircularProgressIndicator().center();
        return Card(
          child: ListTile(
            title: Column(
              children: [
                TextFormField(
                  initialValue: flashCard.question,
                  onChanged: (question) => editQuestionOfFlashCard(
                    flashCardId,
                    question,
                  ),
                ).pad(),
                TextFormField(
                  initialValue: flashCard.answer,
                  onChanged: (answer) => editAnswerOfFlashCard(
                    flashCardId,
                    answer,
                  ),
                ).pad(),
                TextFormField(
                  initialValue: flashCard.explaination,
                  onChanged: (explaination) => editExplainationOfFlashCard(
                    flashCardId,
                    explaination,
                  ),
                ).pad(),
              ],
            ),
          ),
        ).pad();
      },
    );
  }
}

Future<void> editQuestionOfFlashCard(
  String flashCardId,
  String question,
) async {
  final flashCard = flashCardsRM.state[flashCardId];
  if (flashCard == null) return;
  flashCardsRM(
    flashCard.copyWith(question: question),
  );
}

Future<void> editAnswerOfFlashCard(
  String flashCardId,
  String answer,
) async {
  final flashCard = flashCardsRM.state[flashCardId];
  if (flashCard == null) return;
  flashCardsRM(
    flashCard.copyWith(answer: answer),
  );
}

Future<void> editExplainationOfFlashCard(
  String flashCardId,
  String explaination,
) async {
  final flashCard = flashCardsRM.state[flashCardId];
  if (flashCard == null) return;
  flashCardsRM(
    flashCard.copyWith(explaination: explaination),
  );
}
