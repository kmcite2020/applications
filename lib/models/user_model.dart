class UserModel {
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

  final String email;

  final String? name;

  final String password;

  final DateTime? dateOfBirth;

  final DateTime? dateOfPuberty;
  UserModel({
    required this.email,
    this.name,
    required this.password,
    this.dateOfBirth,
    this.dateOfPuberty,
  });

  // static List<UserModel> fromListJson(String source) {
  //   final List result = json.decode(source) as List;
  //   return result.map((e) => UserModel.fromJson(e)).toList();
  // }

  // static String toListJson(List<UserModel> users) {
  //   final List result = users.map((e) => e.toJson()).toList();
  //   return json.encode(result);
  // }
}
