// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
part 'password_model.g.dart';

@CopyWith()
@JsonSerializable()
class Password {
  final String password;
  final bool isPasswordVisible;
  final bool isAddDiseaseVisible;
  Password({
    this.password = '123456',
    this.isPasswordVisible = false,
    this.isAddDiseaseVisible = false,
  });

  factory Password.fromJson(json) => _$PasswordFromJson(json);
  toJson() => _$PasswordToJson(this);
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
