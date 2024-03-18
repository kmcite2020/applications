import 'package:roster_system/doctors/doctors.dart';
import 'package:roster_system/main.dart';

final doctorsRM = RM.inject(
  () => Doctors(),
  persist: () => PersistState(
    key: 'doctors',
    toJson: (state) => jsonEncode(state.toJson()),
    fromJson: (json) => Doctors.fromJson(jsonDecode(json)),
  ),
);

Doctors get doctors => doctorsRM.state;
set doctors(Doctors _) => doctorsRM.state = _;
