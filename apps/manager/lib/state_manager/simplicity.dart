import 'package:manager/manager.dart';

abstract class CallableForStateOnly<State> {
  State call([State? newState]);
}

class Simplicity<State> extends Base<State>
    implements CallableForStateOnly<State> {
  Simplicity(
    this.initialState, {
    this.autoDispose = true,
  });
  @override
  final State initialState;
  @override
  final bool autoDispose;
  @override
  State call([State? newState]) {
    if (newState != null) {
      state = newState;
    }
    return state;
  }
}
