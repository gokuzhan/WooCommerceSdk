// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCJwtResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCJwtResponse _$WCJwtResponseFromJson(Map<String, dynamic> json) {
  return WCJwtResponse(
    json['token'] as String,
    json['userEmail'] as String,
    json['userNicename'] as String,
    json['userDisplayName'] as String,
  );
}

Map<String, dynamic> _$WCJwtResponseToJson(WCJwtResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userEmail': instance.userEmail,
      'userNicename': instance.userNicename,
      'userDisplayName': instance.userDisplayName,
    };
