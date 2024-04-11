import 'package:opthalmology/features/flash_groups/flash_card_ui.dart';
import 'package:opthalmology/features/flash_groups/flash_groups.dart';

import '../../../main.dart';

Future<void> editFlashGroupName(String flashGroupId) async {
  final name = await RM.navigate.toDialog<String>(
    Dialog(
      child: TextFormField(
        onFieldSubmitted: RM.navigate.back,
      ).pad(),
    ),
  );
  if (name != null) {
    final flashGroup = flashGroupsRM.state[flashGroupId];
    if (flashGroup != null) {
      flashGroupsRM.save(
        flashGroup.copyWith(name: name),
      );
    }
  }
}

Future<void> editFlashCardGroup(String flashCardId) async {
  final flashGroup = await RM.navigate.toDialog<FlashGroup>(
    Dialog(
      child: DropdownButtonFormField<FlashGroup>(
        value: null,
        items: flashGroupsRM()
            .map(
              (eachFlashGroup) => DropdownMenuItem(
                value: eachFlashGroup,
                child: eachFlashGroup.name.text(),
              ),
            )
            .toList(),
        onChanged: RM.navigate.back,
      ).pad(),
    ),
  );
  if (flashGroup != null) {
    final flashCard = flashCardsRM.state[flashCardId];
    if (flashCard != null) {
      flashCardsRM.save(
        flashCard.copyWith(flashGroupId: flashGroup.id),
      );
    }
  }
}

class FlashCardsPage extends UI {
  const FlashCardsPage({
    super.key,
    required this.flashGroupId,
  });
  final String flashGroupId;
  @override
  Widget build(BuildContext context) => FlashGroupBuilder(
        flashGroupId: flashGroupId,
        builder: (flashGroup) {
          return switch (flashGroupId) {
            '' => Scaffold(
                appBar: AppBar(
                  title: 'Ungrouped'.text(),
                ),
                body: PageView.builder(
                  itemCount: flashCardsRM()
                      .where(
                        (efc) => efc.flashGroupId == flashGroupId,
                      )
                      .length,
                  itemBuilder: (context, index) {
                    final flashCard = flashCardsRM()
                        .where(
                          (efc) => efc.flashGroupId == flashGroupId,
                        )
                        .toList()[index];
                    return FlashCardUI(
                      flashCardId: flashCard.id,
                    );
                  },
                ),
              ),
            _ => () {
                flashGroup!;
                return Scaffold(
                  appBar: AppBar(
                    title: flashGroup.name.text(),
                    backgroundColor: flashGroup.color,
                    actions: [
                      IconButton(
                        onPressed: () => editFlashGroupName(flashGroupId),
                        icon: Icon(Icons.edit_document),
                      ),
                    ],
                  ),
                  body: ListView(
                    children: flashCardsRM()
                        .where(
                            (element) => element.flashGroupId == flashGroupId)
                        .map(
                          (e) => FlashCardUI(flashCardId: e.id),
                        )
                        .toList(),
                  ),
                );
              }(),
          };
        },
      );
}

class FlashGroupBuilder extends UI {
  final String flashGroupId;
  final Widget Function(FlashGroup? flashGroup) builder;
  const FlashGroupBuilder({
    super.key,
    required this.flashGroupId,
    required this.builder,
  });
  @override
  Widget build(BuildContext context) {
    final flashGroup = flashGroupsRM.state[flashGroupId];
    return builder(flashGroup);
  }
}

class FlashCardBuilder extends UI {
  final String flashCardId;
  final Widget Function(FlashCard? flashCard) builder;
  const FlashCardBuilder({
    super.key,
    required this.flashCardId,
    required this.builder,
  });
  @override
  Widget build(BuildContext context) {
    final flashCard = flashCardsRM.state[flashCardId];
    return builder(flashCard);
  }
}
