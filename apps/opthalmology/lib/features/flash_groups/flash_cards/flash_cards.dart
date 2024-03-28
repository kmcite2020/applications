import 'package:opthalmology/features/flash_groups/flash_groups.dart';

import '../../../main.dart';

part 'flash_cards.freezed.dart';
part 'flash_cards.g.dart';

Map<String, FlashCard> flashCards([Map<String, FlashCard>? _flashCards]) {
  if (_flashCards != null)
    appState(appState().copyWith(flashCards: _flashCards));
  return appState().flashCards;
}

final saveFlashCard = (FlashCard flashCard) {
  flashCards(Map.of(flashCards())..[flashCard.id] = flashCard);
};
final deleteFlashCard = (FlashCard flashCard) {
  flashCards(
    Map.of(flashCards())..remove(flashCard.id),
  );
};

@freezed
class FlashCard with _$FlashCard {
  const factory FlashCard({
    @Default('') final String flashGroupId,
    @Default('') final String id,
    @Default('') final String question,
    @Default('') final String answer,
    @Default('') final String explaination,
  }) = _FlashCard;
  const FlashCard._();
  FlashGroup? get flashGroup => flashGroups()[flashGroupId];
  factory FlashCard.fromJson(Map<String, dynamic> json) =>
      _$FlashCardFromJson(json);
}
