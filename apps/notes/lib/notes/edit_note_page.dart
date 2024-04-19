import 'package:notes/main.dart';
import 'package:notes/notes/note_builder.dart';

final Simple<Note?> _editNoteRM = Simple(null);

class EditNotePage extends UI {
  const EditNotePage({super.key, required this.id});
  final String id;

  @override
  void didMountWidget(BuildContext context) {
    _editNoteRM(notesRM.tryGet(id));
  }

  @override
  Widget build(BuildContext context) {
    return NoteBuilder(
        id: id,
        builder: (context, note) {
          return Scaffold(
            appBar: AppBar(
              title: note.title.text(),
            ),
            body: Column(
              children: [
                TextFormField(
                  initialValue: _editNoteRM()?.title,
                  onChanged: (value) {
                    _editNoteRM(
                      _editNoteRM()?.copyWith(title: value),
                    );
                  },
                ).pad(),
                TextFormField(
                  initialValue: _editNoteRM()?.details,
                  onChanged: (value) {
                    _editNoteRM(
                      _editNoteRM()?.copyWith(details: value),
                    );
                  },
                ).pad(),
                DropdownButtonFormField(
                  value: _editNoteRM()?.noteStatus,
                  items: NoteStatus.values
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: e.name.text(),
                        ),
                      )
                      .toList(),
                  onChanged: (onChanged) => _editNoteRM(
                    _editNoteRM()?.copyWith(noteStatus: onChanged!),
                  ),
                ).pad(),
                ElevatedButton(
                  onPressed: () async {
                    final dueDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1950),
                      initialDate: _editNoteRM()?.dueDate,
                      lastDate: DateTime.now().add(Duration(days: 365)),
                    );
                    if (dueDate == null) return;
                    _editNoteRM(
                      _editNoteRM()?.copyWith(dueDate: dueDate),
                    );
                  },
                  child: 'Date Selector'.text(),
                ).pad(),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: note == _editNoteRM()
                          ? null
                          : () {
                              notesRM(_editNoteRM() ?? note);
                            },
                      child: 'Save'.text(textScaleFactor: 1.4).pad(),
                    ).pad(),
                  ],
                ),
                (_editNoteRM()?.dueDate).text().pad(),
              ],
            ),
          );
        });
  }
}
