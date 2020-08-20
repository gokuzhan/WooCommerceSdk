// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderPayloadMetaData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderPayloadMetaData _$WCOrderPayloadMetaDataFromJson(
    Map<String, dynamic> json) {
  return WCOrderPayloadMetaData(
    json['id'] as int,
    json['key'] as String,
    json['value'],
  );
}

Map<String, dynamic> _$WCOrderPayloadMetaDataToJson(
        WCOrderPayloadMetaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };
