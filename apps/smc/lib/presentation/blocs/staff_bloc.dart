import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/models/models.dart';

final staffBloc = StaffBloc();

class StaffBloc {
  final staffsRM = RM.inject(
    () => <Staff>[],
    initialState: <Staff>[],
  );
  List<Staff> get staffs => staffsRM.state;
  List<Staff> get physicians => staffs
      .where(
        (element) => element.staffType == StaffType.PHYSICIAN,
      )
      .toList();
}
