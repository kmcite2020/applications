import 'package:manager/manager.dart';
import 'package:notes/main.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required final String id,
    required final DateTime timeCreated,
    @Default('') final String title,
    @Default('') final String details,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

@freezed
class Notes with _$Notes {
  const factory Notes({
    @Default(<String, Note>{}) final Map<String, Note> cache,
  }) = _Notes;
  const Notes._();
  List<Note> call() => cache.values.toList()
    ..sort(
      (a, b) => b.timeCreated.compareTo(a.timeCreated),
    )
    ..reversed.toList();

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}

void setNote(Note note) {
  setNotes(
    notes.copyWith(
      cache: Map.of(notes.cache)
        ..[note.id] = note.copyWith(
          timeCreated: DateTime.now(),
        ),
    ),
  );
}

void removeNote(Note note) {
  setNotes(
    notes.copyWith(
      cache: Map.of(notes.cache)..remove(note.id),
    ),
  );
}

Note? getNote(String id) {
  return notes.cache[id];
}

Notes get notes => notesRM.state;
final notesRM = RM.inject(
  () => Notes(),
  persist: () => PersistState(
    key: 'notes',
    toJson: (notes) => jsonEncode(notes.toJson()),
    fromJson: (json) => Notes.fromJson(jsonDecode(json)),
  ),
);
void setNotes(Notes notes) => notesRM.state = notes;
