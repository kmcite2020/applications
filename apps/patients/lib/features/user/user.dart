import '../../main.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel.raw({
    required final ShowDurationIn showDurationIn,
    required final DateTime jobStartedOn,
    required final String name,
  }) = _UserModel;
  factory UserModel.fromJson(json) => _$UserModelFromJson(json);
  factory UserModel() => UserModel.raw(
        showDurationIn: ShowDurationIn.seconds,
        jobStartedOn: DateTime.now(),
        name: '',
      );
}

enum ShowDurationIn {
  seconds,
  minutes,
  hours,
  days,
  months,
  years,
}

final userManager = UserManager();

class UserManager {
  final jobDurationRM = RM.injectStream(
    () => Stream.periodic(
      1.seconds,
      (_) {
        final currentDateTime = DateTime.now();
        return currentDateTime.difference(userManager.userModel.jobStartedOn);
      },
    ),
    initialState: Duration.zero,
    persist: () => PersistState(
      key: 'jobDuration',
      toJson: (s) => jsonEncode(s.inSeconds),
      fromJson: (json) => Duration(seconds: jsonDecode(json)),
    ),
  );
  Duration get jobDuration => jobDurationRM.state;
  final userModelRM = RM.inject(
    () => UserModel(),
    persist: () => PersistState(
      key: 'user',
      fromJson: (json) => UserModel.fromJson(jsonDecode(json)),
      toJson: (s) => jsonEncode(s.toJson()),
    ),
  );
  UserModel get userModel => userModelRM.state;
  void setUserModel(
    UserModel Function(UserModel userModel) userModelModifier,
  ) {
    userModelRM.state = userModelModifier(userModel);
  }

  ShowDurationIn get showDurationIn => userModel.showDurationIn;

  void setShowDurationIn(showDurationIn) => setUserModel(
      (userModel) => userModel.copyWith(showDurationIn: showDurationIn));

  void setName(name) =>
      setUserModel((userModel) => userModel.copyWith(name: name));

  DateTime jobStartedOn() => userModel.jobStartedOn;

  void setJobStartedOn() async {
    final selectedDateTime = await showDatePicker(
      context: context,
      initialDate: jobStartedOn(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (selectedDateTime != null) {
      setUserModel(
          (userModel) => userModel.copyWith(jobStartedOn: selectedDateTime));
    }
  }

  String jobStartedOnString() {
    final formattedDate = DateFormat('dd/MM/yyyy').format(jobStartedOn());
    return formattedDate;
  }

  void dispose() {
    userModelRM.dispose();
    jobDurationRM.dispose();
  }
}
