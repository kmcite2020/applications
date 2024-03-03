import 'package:hmis/main.dart';

part 'investigations.freezed.dart';
part 'investigations.g.dart';

@freezed
class Investigation with _$Investigation {
  const factory Investigation.create({
    @Default('') final String id,
    @Default('') final String name,
    @Default(200) final int price,
  }) = _Investigation;
  factory Investigation() {
    return Investigation.create(id: randomID);
  }
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

final investigationsRM = InvestigationsRM();

class InvestigationsRM extends Manager<Investigations> {
  @override
  final initialState = const Investigations();

  void add(Investigation investigation) {
    call(
      state.copyWith(
        cache: Map.of(state.cache)..[investigation.id] = investigation,
      ),
    );
  }

  void remove(Investigation investigation) {
    call(
      state.copyWith(
        cache: Map.of(state.cache)..remove(investigation.id),
      ),
    );
  }

  @override
  final persistor = Persistor(
    key: 'investigations',
    toJson: (state) => state.toJson(),
    fromJson: Investigations.fromJson,
  );
}
