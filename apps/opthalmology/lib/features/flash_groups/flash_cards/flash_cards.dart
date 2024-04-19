import 'package:opthalmology/features/flash_groups/flash_groups.dart';

import '../../../main.dart';

part 'flash_cards.freezed.dart';
part 'flash_cards.g.dart';

final flashCardsRM = ComplexTable(
  'flashCards',
  fromJson: FlashCard.fromJson,
);

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
  FlashGroup? get flashGroup => flashGroupsRM.tryGet(flashGroupId);
  factory FlashCard.fromJson(Map<String, dynamic> json) =>
      _$FlashCardFromJson(json);
}
