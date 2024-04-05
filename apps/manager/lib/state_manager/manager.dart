import 'package:manager/manager.dart';

abstract class CallableForStateOnly<State> {
  State call([State? newState]);
}

abstract class Manager<State> extends Base<State>
    implements CallableForStateOnly<State> {
  State get initialState;
  State call([State? newState]) {
    if (newState != null) {
      state = newState;
    }
    return state;
  }
}
