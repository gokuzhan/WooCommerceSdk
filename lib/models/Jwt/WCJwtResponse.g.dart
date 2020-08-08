// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCJwtResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCAuthResponse _$WCJwtResponseFromJson(Map<String, dynamic> json) {
  return WCAuthResponse(
    json['wp_user'] as Map<String, dynamic>,
    json['access_token'] as String,
    json['refresh_token'] as String,
    json['expires_in'] as int,
  );
}

Map<String, dynamic> _$WCJwtResponseToJson(WCAuthResponse instance) =>
    <String, dynamic>{
      'wp_user': instance.wp_user,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'expires_in': instance.expires_in,
    };
