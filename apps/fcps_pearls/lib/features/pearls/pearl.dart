import 'package:fcps_pearls/features/auth_state.dart';
import 'package:fcps_pearls/features/pearls/repository.dart';

import '../../main.dart';

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
    register(email, password, userID);
  }
  final initialState = Pearls();
  // final pearlsRM = RM.injectFuture<List<Pearl>>(
  //   () => pearlsRepository.getPearls(),
  //   initialState: <Pearl>[],
  //   autoDisposeWhenNotUsed: false,
  //   persist: () => PersistState(
  //     key: 'pearls',
  //     toJson: Pearl.toListJson,
  //     fromJson: Pearl.fromListJson,
  //   ),
  // );

  // bool get loading => pearlsRM.isWaiting;
  // List<Pearl> call() => pearlsRM.state;
  Future<List<Pearl>> getPearlsAsync() {
    pearlsRM.stateAsync = pearlsRepository.getPearls();
    return pearlsRM.stateAsync;
  }

  Pearl getPearl(String id) => this().firstWhere((element) => element.id == id);
  Future<void> createPearl(Pearl pearl) async => await pearlsRM.setState(
        (_) async {
          await pearlsRepository.createPearl(pearl);
          return this()..add(pearl);
        },
      );
  Future<void> deletePearl(Pearl pearl) async => await pearlsRM.setState(
        (_) async {
          await pearlsRepository.deletePearl(pearl.id);
          return this()..remove(pearl);
        },
      );
}

@freezed
class PearlsEvent with _$PearlsEvent {
  const factory PearlsEvent() = _PearlsEvent;
}
