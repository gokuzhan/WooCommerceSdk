// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderMetaData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderMetaData _$WCOrderMetaDataFromJson(Map<String, dynamic> json) {
  return WCOrderMetaData(
    json['id'] as int,
    json['key'] as String,
    json['value'],
  );
}

Map<String, dynamic> _$WCOrderMetaDataToJson(WCOrderMetaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };
