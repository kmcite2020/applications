import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manager/manager.dart';
import 'package:manager/model.dart';
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

class NotesRM extends Manager<Notes> {
  @override
  Notes get initialState => const Notes();
  @override
  Persistor<Notes>? get persistor {
    return Persistor(
      key: 'notes',
      toJson: (notes) => notes.toJson(),
      fromJson: Notes.fromJson,
    );
  }

  void setNote(Note note) {
    call(
      state.copyWith(
        cache: Map.of(state.cache)
          ..[note.id] = note.copyWith(
            timeCreated: DateTime.now(),
          ),
      ),
    );
  }

  void removeNote(Note note) {
    call(
      state.copyWith(
        cache: Map.of(state.cache)..remove(note.id),
      ),
    );
  }

  Note? getNote(String id) {
    return state.cache[id];
  }
}

final notesRM = NotesRM();
