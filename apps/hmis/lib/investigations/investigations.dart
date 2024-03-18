import 'package:hmis/main.dart';

part 'investigations.freezed.dart';
part 'investigations.g.dart';

@freezed
class Investigation with _$Investigation {
  const factory Investigation({
    @Default('') final String id,
    @Default('') final String name,
    @Default(200) final int price,
  }) = _Investigation;

  factory Investigation.fromJson(Map<String, dynamic> json) =>
      _$InvestigationFromJson(json);
}

@freezed
class Investigations with _$Investigations {
  const factory Investigations({
    @Default(<String, Investigation>{}) final Map<String, Investigation> cache,
  }) = _Investigations;

  factory Investigations.fromJson(Map<String, dynamic> json) =>
      _$InvestigationsFromJson(json);
}

Investigations get investigations => investigationsRM.state;
final investigationsRM = RM.inject(
  () => Investigations(),
  persist: () => PersistState(
    key: 'investigations',
    toJson: (state) => jsonEncode(state.toJson()),
    fromJson: (json) => Investigations.fromJson(jsonDecode(json)),
  ),
);
void setInvestigations(Investigations investigations) =>
    investigationsRM.state = investigations;

void addInvestigation(Investigation investigation) {
  setInvestigations(
    investigations.copyWith(
      cache: Map.of(investigations.cache)..[investigation.id] = investigation,
    ),
  );
}

void removeInvestigation(Investigation investigation) {
  setInvestigations(
    investigations.copyWith(
      cache: Map.of(investigations.cache)..remove(investigation.id),
    ),
  );
}
