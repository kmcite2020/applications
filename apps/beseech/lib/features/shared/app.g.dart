// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationImpl _$$ApplicationImplFromJson(Map<String, dynamic> json) =>
    _$ApplicationImpl(
      settings: SettingsState.fromJson(json['settings']),
      onboarding: Onboarding.fromJson(json['onboarding']),
      appUser: AppUser.fromJson(json['appUser']),
    );

Map<String, dynamic> _$$ApplicationImplToJson(_$ApplicationImpl instance) =>
    <String, dynamic>{
      'settings': instance.settings,
      'onboarding': instance.onboarding,
      'appUser': instance.appUser,
    };
