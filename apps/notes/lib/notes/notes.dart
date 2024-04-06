import 'package:manager/manager.dart';
import 'package:manager/state_manager/collection.dart';
import 'package:notes/main.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

@freezed
class Note extends ID with _$Note {
  const factory Note({
    required final String id,
    required final DateTime timeCreated,
    @Default('') final String title,
    @Default('') final String details,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

final notesRM = ComplexCollection<Note>();
