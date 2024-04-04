// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateImpl(
      status: $enumDecodeNullable(_$AuthStatusEnumMap, json['status']) ??
          AuthStatus.unAuthenticated,
      userID: json['userID'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      error: json['error'] as String? ?? '',
      stackTrace: json['stackTrace'] as String? ?? '',
      session: Session.fromMap(json['session'] as Map<String, dynamic>),
      user: User.fromMap(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'status': _$AuthStatusEnumMap[instance.status]!,
      'userID': instance.userID,
      'email': instance.email,
      'password': instance.password,
      'error': instance.error,
      'stackTrace': instance.stackTrace,
      'session': toJsonAny(instance.session),
      'user': toJsonAny(instance.user),
    };

const _$AuthStatusEnumMap = {
  AuthStatus.waiting: 'waiting',
  AuthStatus.unAuthenticated: 'unAuthenticated',
  AuthStatus.authenticated: 'authenticated',
  AuthStatus.error: 'error',
};
