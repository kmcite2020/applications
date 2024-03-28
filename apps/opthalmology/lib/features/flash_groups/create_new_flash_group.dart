import 'package:opthalmology/features/flash_groups/flash_groups.dart';

import '../../main.dart';

final createNewFlashGroup = () async {
  final flashGroup = await RM.navigate.toDialog(NewFlashGroupDialog());
  if (flashGroup != null) {
    saveFlashGroup(flashGroup.copyWith(id: randomID));
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
            onChanged: (colorName) {
              newFlashGroup(
                newFlashGroup().copyWith(
                  colorIndex: colorName!.index,
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
