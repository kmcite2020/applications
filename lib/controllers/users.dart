import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_model.dart';
part 'users.g.dart';

@riverpod
class Users extends _$Users {
  @override
  List<UserModel> build() {
    return [];
  }

  void addUser(String name, String emailID, String password) {
    state = [
      ...state,
      UserModel(
        name: name,
        email: emailID,
        password: password,
        dateOfBirth: null,
        dateOfPuberty: null,
      ),
    ];
  }

  void removeUser(UserModel user) {
    state = state.where((element) => element != user).toList();
  }

  void removeAllUsers() => state = [];
}

const guestUser = UserModel(email: 'guest', password: '123456', dateOfBirth: null, dateOfPuberty: null, name: '');
