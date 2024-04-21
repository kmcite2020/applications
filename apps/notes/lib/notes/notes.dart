import 'package:manager/manager.dart';
import 'package:notes/main.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

enum NoteStatus { Complete, Incomplete }

@freezed
class Note with _$Note {
  const factory Note.internal({
    @Default('') final String id,
    @Default('') final String title,
    @Default('') final String details,
    @Default(NoteStatus.Incomplete) final NoteStatus noteStatus,
    required final DateTime dueDate,
    required final DateTime timeCreated,
  }) = _Note;

  factory Note() => Note.internal(
        dueDate: DateTime.now(),
        timeCreated: DateTime.now(),
      );

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

final notesRM = ComplexTable<Note>(
  'notes',
  fromJson: Note.fromJson,
);
