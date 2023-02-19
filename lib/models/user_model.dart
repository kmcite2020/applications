// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  Duration? get age => DateTime.now().difference(dateOfBirth!);
  Duration get farzPrayers {
    if (dateOfPuberty != null) {
      return DateTime.now().difference(dateOfPuberty!);
    } else {
      if (age!.inDays > 13 * 365) {
        return DateTime.now().difference(dateOfBirth!.add(const Duration(days: 13 * 365)));
      }
    }

    return const Duration();
  }

  const UserModel._();
  const factory UserModel({
    required final String email,
    required final String? name,
    required final String password,
    required final DateTime? dateOfBirth,
    required final DateTime? dateOfPuberty,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  // static List<UserModel> fromListJson(String source) {
  //   final List result = json.decode(source) as List;
  //   return result.map((e) => UserModel.fromJson(e)).toList();
  // }

  // static String toListJson(List<UserModel> users) {
  //   final List result = users.map((e) => e.toJson()).toList();
  //   return json.encode(result);
  // }

}
