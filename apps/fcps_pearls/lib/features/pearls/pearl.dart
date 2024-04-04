import 'package:manager/manager.dart';

part 'pearl.freezed.dart';
part 'pearl.g.dart';

@freezed
class Pearls with _$Pearls {
  const factory Pearls({
    @Default(<String, Pearl>{}) final Map<String, Pearl> pearlsCache,
    @Default(false) final bool loading,
  }) = _Pearls;
  const Pearls._();

  factory Pearls.fromJson(json) => _$PearlsFromJson(json);
  int get length => pearlsCache.length;
}

@freezed
class Pearl with _$Pearl {
  const factory Pearl({
    @Default('') final String id,
    @Default('') final String statement,
    @Default('') final String answer,
    @Default('') final String explanation,
  }) = _Pearl;

  factory Pearl.fromJson(json) => _$PearlFromJson(json);
  // Two static methods to parse a list of CounterModel
  static List<Pearl> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => Pearl.fromJson(e)).toList();
  }

  static String toListJson(List<Pearl> pearls) {
    final List result = pearls.map((e) => e.toJson()).toList();
    return json.encode(result);
  }
}

final pearlsRM = PearlsRM();

class PearlsRM extends Complex<PearlsEvent, Pearls> {
  PearlsRM() {
    register<_PearlsEventSave>(
      (e) {
        state = state.copyWith(
            pearlsCache: Map.of(state.pearlsCache)..[e.pearl.id] = e.pearl);
      },
    );
    register<_PearlsEventDelete>(
      (e) {
        state = state.copyWith(
            pearlsCache: Map.of(state.pearlsCache)..remove(e.pearl));
      },
    );
  }

  Pearl? getByID(String id) => state.pearlsCache[id];

  final initialState = Pearls();
}

@freezed
class PearlsEvent with _$PearlsEvent {
  const factory PearlsEvent.save(Pearl pearl) = _PearlsEventSave;
  const factory PearlsEvent.delete(Pearl pearl) = _PearlsEventDelete;
}
