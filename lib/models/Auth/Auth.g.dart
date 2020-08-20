// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return Auth(
    json['token'] as String,
    json['id'] as int,
    json['email'] as String,
    json['nicename'] as String,
    json['firstName'] as String,
    json['lastName'] as String,
    json['displayName'] as String,
  );
}

Map<String, dynamic> _$AuthToJson(Auth instance) => <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'email': instance.email,
      'nicename': instance.nicename,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'displayName': instance.displayName,
    };
