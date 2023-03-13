import 'package:states_rebuilder/scr/state_management/extensions/reactive_model_x.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

class ColorsBloc {
  bool get isSettingsVisible => _isVisibleRM.state;
  void toggleVisibility() => _isVisibleRM.toggle();
  final _isVisibleRM = RM.inject(() => false);
}

final ColorsBloc colorsBloc = ColorsBloc();
