import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manager/manager.dart';
part 'notes.freezed.dart';
part 'notes.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required final String id,
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

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}

class NotesRM extends Cubit<Notes> {
  @override
  Notes get initialState => const Notes();

  void setNote(Note note) {
    call(
      state.copyWith(cache: Map.of(state.cache)..[note.id] = note),
    );
  }

  void removeNote(Note note) {
    call(
      state.copyWith(
        cache: Map.of(state.cache)..remove(note.id),
      ),
    );
  }
}

final notesRM = NotesRM();
