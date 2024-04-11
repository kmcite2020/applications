import 'package:opthalmology/features/flash_groups/flash_groups.dart';

import '../../main.dart';

final createNewFlashGroup = () async {
  final flashGroup = await RM.navigate.toDialog(NewFlashGroupDialog());
  if (flashGroup != null) {
    flashGroupsRM.save(flashGroup.copyWith(id: randomID));
  }
};

final newFlashGroupRM = RM.inject(() => FlashGroup());
FlashGroup newFlashGroup([FlashGroup? _flashGroup]) => _flashGroup != null
    ? newFlashGroupRM.state = _flashGroup
    : newFlashGroupRM.state;

class NewFlashGroupDialog extends UI {
  const NewFlashGroupDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: newFlashGroup().color,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          'New FlashGroup'.text(textScaleFactor: 1.5).pad(),
          DropdownButtonFormField(
            value: null,
            items: Colors.primaries
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.colorName.text(),
                  ),
                )
                .toList(),
            onChanged: (color) {
              newFlashGroup(
                newFlashGroup().copyWith(
                  color: color!,
                ),
              );
            },
          ).pad(),
          TextFormField(
            initialValue: newFlashGroup().name,
            onChanged: (name) => newFlashGroup(
              newFlashGroup().copyWith(name: name),
            ),
          ).pad(),
          ElevatedButton.icon(
            icon: Icon(Icons.save),
            onPressed: () {
              RM.navigate.back(newFlashGroup());
            },
            label: 'Save FlashGroup'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
