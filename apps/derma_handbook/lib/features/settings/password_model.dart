import '../../main.dart';

part 'password_model.g.dart';
part 'password_model.freezed.dart';

@freezed
@freezed
class Password with _$Password {
  const factory Password({
    @Default('false') final String password,
    @Default(false) final bool isPasswordVisible,
    @Default(false) final bool isAddDiseaseVisible,
  }) = _Password;

  factory Password.fromJson(Map<String, dynamic> json) =>
      _$PasswordFromJson(json);
}

final passwordBloc = PasswordManager();

class PasswordManager {
  final passwordRM = RM.inject(() => Password());
  Password get password => passwordRM.state;
  set password(Password v) => passwordRM.state = v;

  void onPasswordVisibilityChanged(bool value) {
    password = password.copyWith(isPasswordVisible: value);
  }

  void onPasswordChanged(String value) {
    password = password.copyWith(password: value);
  }

  void onAddDiseaseVisibilityChanged(bool value) {
    password = password.copyWith(isAddDiseaseVisible: value);
  }
}
