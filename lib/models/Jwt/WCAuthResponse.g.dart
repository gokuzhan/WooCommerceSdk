// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCAuthResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCAuthResponse _$WCAuthResponseFromJson(Map<String, dynamic> json) {
  return WCAuthResponse(
    json['success'] as bool,
    json['status_code'] as int,
    json['code'] as String,
    json['message'] as String,
    json['data'] == null
        ? null
        : Auth.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCAuthResponseToJson(WCAuthResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
