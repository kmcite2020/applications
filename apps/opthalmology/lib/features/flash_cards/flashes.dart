import '../../main.dart';
import '../study_timer/study_timer.dart';

part 'flashes.g.dart';
// part 'flashes.freezed.dart';

class FlashCardsRM {
  final rm = RM.injectStream(
    () => isar.flashCards.where().watch(fireImmediately: true),
  );
  List<FlashCard> call() => rm.onAll(
        onWaiting: () => [],
        onError: (error, refresh) => [],
        onData: (flashCards) => flashCards,
      );

  final addFlash = (FlashCard flashCard, Folder folder) {
    isar.write(
      (isar) {
        isar.flashCards.put(flashCard..folder = folder.folder);
      },
    );
    print('Something Happened');
  };
}

final flashesRM = FlashCardsRM();

@collection
class FlashCard {
  @Id()
  String id = randomID;
  String? question;
  String? answer;
  String? folder;
}
