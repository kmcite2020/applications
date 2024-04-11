import 'package:manager/manager.dart';
import 'package:manager/state_manager/collection.dart';
import 'package:notes/main.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

enum NoteStatus { completed, notCompleted }

@freezed
class Note extends ID with _$Note {
  const factory Note.internal({
    @Default('') final String id,
    @Default('') final String title,
    @Default('') final String details,
    @Default(NoteStatus.notCompleted) final NoteStatus noteStatus,
    required final DateTime dueDate,
    required final DateTime timeCreated,
  }) = _Note;

  factory Note() => Note.internal(
        dueDate: DateTime.now(),
        timeCreated: DateTime.now(),
      );

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

final notesRM = ComplexCollection<Note>(
  persistor: Persistor(
    key: 'notes',
    toJson: (state) => state.map(
      (key, value) => MapEntry(
        key,
        value.toJson(),
      ),
    ),
    fromJson: (json) => json.map(
      (key, value) => MapEntry(
        key,
        Note.fromJson(value),
      ),
    ),
  ),
);
