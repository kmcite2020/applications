import 'package:manager/manager.dart';

part 'fajr_bloc.freezed.dart';
part 'fajr_bloc.g.dart';

final fajrRM = FajrRM();

class FajrRM extends Complex<FajrEvent, FajrState> {
  FajrRM() {
    register<_FajrEventDec>((_) {
      state = state.copyWith(count: state.count - 1);
    });
    register<_FajrEventInc>((_) {
      state = state.copyWith(count: state.count + 1);
    });
  }

  // @override
  // FajrState? fromJson(Map<String, dynamic> json) => FajrState.fromJson(json);

  // @override
  // Map<String, dynamic>? toJson(FajrState state) => state.toJson();

  @override
  FajrState get initialState => FajrState();
}

@freezed
class FajrEvent with _$FajrEvent {
  const factory FajrEvent() = _FajrEvent;
  const factory FajrEvent.prayerIncremented() = _FajrEventInc;
  const factory FajrEvent.prayerDecremented() = _FajrEventDec;

  factory FajrEvent.fromJson(Map<String, dynamic> json) =>
      _$FajrEventFromJson(json);
}

@freezed
class FajrState with _$FajrState {
  const factory FajrState({
    @Default(0) final int count,
  }) = _FajrState;

  factory FajrState.fromJson(Map<String, dynamic> json) =>
      _$FajrStateFromJson(json);
}
