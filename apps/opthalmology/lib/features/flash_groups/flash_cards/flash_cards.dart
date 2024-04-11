import 'package:manager/state_manager/collection.dart';
import 'package:opthalmology/features/flash_groups/flash_groups.dart';

import '../../../main.dart';

part 'flash_cards.freezed.dart';
part 'flash_cards.g.dart';

final flashCardsRM = ComplexCollection<FlashCard>();

@freezed
class FlashCard extends ID with _$FlashCard {
  const factory FlashCard({
    @Default('') final String flashGroupId,
    @Default('') final String id,
    @Default('') final String question,
    @Default('') final String answer,
    @Default('') final String explaination,
  }) = _FlashCard;
  const FlashCard._();
  FlashGroup? get flashGroup => flashGroupsRM.state[flashGroupId];
  factory FlashCard.fromJson(Map<String, dynamic> json) =>
      _$FlashCardFromJson(json);
}
