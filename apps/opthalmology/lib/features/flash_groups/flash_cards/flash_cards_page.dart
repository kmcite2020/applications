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
    final flashGroup = flashGroups()[flashGroupId];
    if (flashGroup != null) {
      saveFlashGroup(
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
        items: flashGroups()
            .values
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
    final flashCard = flashCards()[flashCardId];
    if (flashCard != null) {
      saveFlashCard(
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
                  itemCount: flashCards()
                      .values
                      .where(
                        (efc) => efc.flashGroupId == flashGroupId,
                      )
                      .length,
                  itemBuilder: (context, index) {
                    final flashCard = flashCards()
                        .values
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
                    backgroundColor: Colors.primaries[flashGroup.colorIndex],
                    actions: [
                      IconButton(
                        onPressed: () => editFlashGroupName(flashGroupId),
                        icon: Icon(Icons.edit_document),
                      ),
                    ],
                  ),
                  body: ListView(
                    children: flashCards()
                        .values
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
    final flashGroup = flashGroups()[flashGroupId];
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
    final flashCard = flashCards()[flashCardId];
    return builder(flashCard);
  }
}
