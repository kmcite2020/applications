import 'package:opthalmology/features/flash_groups/flash_groups.dart';

import '../../main.dart';

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
    @Default(FlashGroup()) final FlashGroup flashGroup,
    @Default('') final String id,
    @Default('') final String question,
    @Default('') final String answer,
    @Default('') final String explaination,
  }) = _FlashCard;

  factory FlashCard.fromJson(Map<String, dynamic> json) =>
      _$FlashCardFromJson(json);
}
