// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCError.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCError _$WCErrorFromJson(Map<String, dynamic> json) {
  return WCError(
    json['code'] as String,
    json['message'] as String,
    json['data'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$WCErrorToJson(WCError instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
