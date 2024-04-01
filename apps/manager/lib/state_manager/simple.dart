import 'package:manager/state_manager/base.dart';

import '../manager.dart';

class Simplicity<State> extends Base<State>
    implements CallableForStateOnly<State> {
  Simplicity(this.initialState);
  @override
  final State initialState;
  @override
  State call([State? newState]) {
    if (newState != null) {
      state = newState;
    }
    return state;
  }
}
