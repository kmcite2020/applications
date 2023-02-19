import '../models/user_model.dart';

class Users {
  @override
  List<UserModel> build() {
    return [];
  }

  void addUser(String name, String emailID, String password) {
    // state = [
    //   ...state,
    //   UserModel(
    //     name: name,
    //     email: emailID,
    //     password: password,
    //     dateOfBirth: null,
    //     dateOfPuberty: null,
    //   ),
    // ];
  }

  void removeUser(UserModel user) {
    // state = state.where((element) => element != user).toList();
  }

  void removeAllUsers() {
    // state = [];
  }
}

final guestUser = UserModel(email: 'guest', password: '123456', dateOfBirth: null, dateOfPuberty: null, name: '');
