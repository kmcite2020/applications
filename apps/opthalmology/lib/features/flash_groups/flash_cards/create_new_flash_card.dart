import 'package:opthalmology/features/flash_groups/flash_groups.dart';

import '../../../main.dart';

final createNewFlashCard = () async {
  final flashCard = await RM.navigate.toDialog(NewFlashCardDialog());
  if (flashCard != null) {
    flashCardsRM.save(flashCard.copyWith(id: randomID));
  }
};

final newFlashCardRM = RM.inject(() => FlashCard());

FlashCard newFlashCard([FlashCard? _flashCard]) => _flashCard != null
    ? newFlashCardRM.state = _flashCard
    : newFlashCardRM.state;

class NewFlashCardDialog extends UI {
  const NewFlashCardDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: newFlashCard().flashGroup?.color,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          'New FlashGroup'.text(textScaleFactor: 1.5).pad(),
          DropdownButtonFormField(
            value: null,
            items: flashGroupsRM()
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.text(),
                  ),
                )
                .toList(),
            onChanged: (flashGroup) {
              if (flashGroup == null) return;
              newFlashCard(
                newFlashCard().copyWith(flashGroupId: flashGroup.id),
              );
            },
          ).pad(),
          TextFormField(
            initialValue: newFlashCard().question,
            minLines: 2,
            maxLines: 3,
            onChanged: (question) {
              newFlashCard(newFlashCard().copyWith(question: question));
            },
          ).pad(),
          TextFormField(
            initialValue: newFlashCard().answer,
            minLines: 2,
            maxLines: 3,
            onChanged: (answer) {
              newFlashCard(newFlashCard().copyWith(answer: answer));
            },
          ).pad(),
          TextFormField(
            initialValue: newFlashCard().explaination,
            onChanged: (explaination) {
              newFlashCard(newFlashCard().copyWith(explaination: explaination));
            },
            minLines: 2,
            maxLines: 3,
          ).pad(),
          ElevatedButton.icon(
            icon: Icon(Icons.save),
            onPressed: () {
              RM.navigate.back(newFlashCard());
            },
            label: 'Save FlashCard'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
