import 'dart:async';

import 'package:opthalmology/main.dart';

import '../stats/stats_page.dart';

part 'sessions.freezed.dart';
part 'sessions.g.dart';

Stream<int> ticker() {
  return Stream.periodic(const Duration(seconds: 1), (x) => x + 1);
}

enum SessionStatus { none, isInitial, isPaused, isRunning, isCompleted }

final sessionsRM = ComplexTable('sessions', fromJson: Session.fromJson);

List<Day> get lsd => sessionsRM()
    .map(
      (element) => Day(durationOfStudy: element.duration),
    )
    .toList();

@freezed
class Session with _$Session {
  const factory Session({
    @Default('') final String id,
    required final DateTime startedOn,
    @Default(0) final int duration,
    @Default(SessionStatus.none) final SessionStatus sessionStatus,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

late final _timerStateRM = RM.inject<Session>(
  () => Session(
    id: randomID,
    startedOn: DateTime.now(),
  ),
  sideEffects: SideEffects(
    dispose: () => _tickerSubscription?.cancel(),
  ),
);
StreamSubscription<int>? _tickerSubscription;
int get duration => _timerStateRM.state.duration;
Session get session => _timerStateRM.state;
void start() {
  _timerStateRM.state = session.copyWith(
    duration: duration,
    sessionStatus: SessionStatus.isRunning,
  );
  _tickerSubscription?.cancel();
  _tickerSubscription = ticker().listen(
    (duration) => _tick(duration),
  );
}

void pause() {
  if (_timerStateRM.state.sessionStatus == SessionStatus.isRunning) {
    _tickerSubscription?.pause();
    _timerStateRM.state = session.copyWith(
      duration: duration,
      sessionStatus: SessionStatus.isPaused,
    );
  }
}

void resume() {
  if (_timerStateRM.state.sessionStatus == SessionStatus.isPaused) {
    _tickerSubscription?.resume();
    _timerStateRM.state = session.copyWith(
      duration: duration,
      sessionStatus: SessionStatus.isRunning,
    );
  }
}

void reset() {
  _tickerSubscription?.cancel();
  sessionsRM(_timerStateRM.state);
  _timerStateRM.state = session.copyWith(
    duration: 0,
    sessionStatus: SessionStatus.isInitial,
    id: randomID,
  );
}

void _tick(int duration) {
  if (duration > 0) {
    _timerStateRM.state = session.copyWith(
      sessionStatus: SessionStatus.isRunning,
      duration: duration,
    );
  } else {
    _timerStateRM.state = session.copyWith(
      sessionStatus: SessionStatus.none,
      duration: 0,
    );
  }
}

class TimerText extends UI {
  const TimerText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
    return Text(
      '$minutesStr:$secondsStr',
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
