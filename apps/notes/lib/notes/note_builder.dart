import '../main.dart';

class NoteBuilder extends UI {
  final String id;
  final Widget Function(BuildContext context, Note note) builder;

  NoteBuilder({
    super.key,
    required this.id,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return builder(context, notesRM.get(id));
  }
}
