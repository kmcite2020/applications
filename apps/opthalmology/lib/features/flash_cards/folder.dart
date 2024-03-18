import 'package:opthalmology/features/study_timer/study_timer.dart';
import 'package:opthalmology/main.dart';

part 'folder.g.dart';

class FoldersRM {
  final rm = RM.injectStream(
    () => isar.folders.where().watch(fireImmediately: true),
  );

  final addFolder = (Folder folder) {
    isar.write(
      (isar) => isar.folders.put(folder),
    );
  };
}

final foldersRM = FoldersRM();

@collection
class Folder {
  @Id()
  String id = randomID;
  String folder = '';
  int colorIndex = 0;

  @ignore
  MaterialColor get color => Colors.primaries[colorIndex];

  set color(MaterialColor value) {
    colorIndex = Colors.primaries.indexOf(value);
  }

  @override
  String toString() => '$folder ${color.colorName}';
}
