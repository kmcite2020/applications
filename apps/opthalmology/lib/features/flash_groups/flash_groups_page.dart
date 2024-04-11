import 'package:opthalmology/features/flash_groups/flash_cards/flash_cards_page.dart';

import '../../main.dart';
import 'flash_cards/create_new_flash_card.dart';
import 'create_new_flash_group.dart';
import 'flash_groups.dart';

class FlashGroupsPage extends UI {
  const FlashGroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'FlashGroups'.text(),
        actions: [
          IconButton(
            tooltip: 'FlashCard',
            onPressed: createNewFlashCard,
            icon: Icon(Icons.create),
          ),
          IconButton(
            tooltip: 'FlashGroup',
            onPressed: createNewFlashGroup,
            icon: Icon(Icons.create_new_folder),
          ).pad(),
        ],
      ),
      body: ListView(
        children: [
          ...flashGroupsRM().map(
            (eachFlashGroup) {
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onTap: () {
                  RM.navigate.to(
                    FlashCardsPage(
                      flashGroupId: eachFlashGroup.id,
                    ),
                  );
                },
                title: eachFlashGroup.name.text(),
                subtitle: flashCardsRM()
                    .where(
                      (eachFlashCard) =>
                          eachFlashCard.flashGroupId == eachFlashGroup.id,
                    )
                    .length
                    .text(),
                tileColor: eachFlashGroup.color,
              ).pad();
            },
          ).toList(),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: Color.fromARGB(64, 189, 175, 73),
            onTap: () {
              RM.navigate.to(FlashCardsPage(flashGroupId: ''));
            },
            title: 'Ungrouped'.text(),
            subtitle: flashCardsRM()
                .where(
                  (card) => card.flashGroupId == '',
                )
                .length
                .text(),
          ).pad(),
        ],
      ),
    );
  }
}
