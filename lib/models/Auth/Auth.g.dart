// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return Auth(
    json['token'] as String,
    json['id'] as String,
    json['email'] as String,
    json['nicename'] as String,
    json['first_name'] as String,
    json['last_name'] as String,
    json['display_name'] as String,
  );
}

Map<String, dynamic> _$AuthToJson(Auth instance) => <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'email': instance.email,
      'nicename': instance.nicename,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'display_name': instance.displayName,
    };
