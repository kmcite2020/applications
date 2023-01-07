// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  Duration? get age => DateTime.now().difference(dateOfBirth!);
  // Duration get farzPrayers {
  //   if (dateOfPuberty != null) {
  //     return DateTime.now().difference(dateOfPuberty!);
  //   } else {
  //     if (age.inDays > 13 * 365) {
  //       return DateTime.now().difference(dateOfBirth?.add(const Duration(days: 13 * 365)));
  //     }
  //   }

  //   return Duration();
  // }

  final String email;
  final String? name;
  final String password;
  final DateTime? dateOfBirth;
  final DateTime? dateOfPuberty;
  const UserModel({
    required this.email,
    this.name,
    required this.password,
    this.dateOfBirth,
    this.dateOfPuberty,
  });

  static List<UserModel> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => UserModel.fromJson(e)).toList();
  }

  static String toListJson(List<UserModel> users) {
    final List result = users.map((e) => e.toJson()).toList();
    return json.encode(result);
  }

  UserModel copyWith({
    String? email,
    String? name,
    String? password,
    DateTime? dateOfBirth,
    DateTime? dateOfPuberty,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      password: password ?? this.password,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      dateOfPuberty: dateOfPuberty ?? this.dateOfPuberty,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'password': password,
      'dateOfBirth': dateOfBirth?.millisecondsSinceEpoch,
      'dateOfPuberty': dateOfPuberty?.millisecondsSinceEpoch,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      name: map['name'] != null ? map['name'] as String : null,
      password: map['password'] as String,
      dateOfBirth: map['dateOfBirth'] != null ? DateTime.fromMillisecondsSinceEpoch(map['dateOfBirth'] as int) : null,
      dateOfPuberty: map['dateOfPuberty'] != null ? DateTime.fromMillisecondsSinceEpoch(map['dateOfPuberty'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      email,
      name,
      password,
      dateOfBirth,
      dateOfPuberty,
    ];
  }
}
