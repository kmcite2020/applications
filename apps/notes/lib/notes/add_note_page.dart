import 'dart:developer';

import 'package:notes/main.dart';

final noteRM = Simple(Note());

class AddNotePage extends UI {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Add Note'.text(),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: noteRM().title,
            onChanged: (value) {
              noteRM(
                noteRM().copyWith(title: value),
              );
            },
          ).pad(),
          TextFormField(
            initialValue: noteRM().details,
            onChanged: (value) {
              noteRM(
                noteRM().copyWith(details: value),
              );
            },
          ).pad(),
          DropdownButtonFormField(
            value: noteRM().noteStatus,
            items: NoteStatus.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.text(),
                  ),
                )
                .toList(),
            onChanged: (onChanged) => noteRM(
              noteRM().copyWith(noteStatus: onChanged!),
            ),
          ).pad(),
          ElevatedButton(
            onPressed: () async {
              final dueDate = await showDatePicker(
                context: context,
                firstDate: DateTime(1950),
                lastDate: DateTime.now().add(Duration(days: 365)),
              );
              if (dueDate == null) return;
              noteRM(
                noteRM().copyWith(timeCreated: dueDate),
              );
            },
            child: 'Date Selector'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: noteRM().title.isEmpty
                ? null
                : () {
                    final note = noteRM().copyWith(id: randomID);
                    log(note.toString());
                    notesRM(note);
                    back();
                  },
            child: 'Save Note'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
