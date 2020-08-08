// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCProductMetaData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCProductMetaData _$WCProductMetaDataFromJson(Map<String, dynamic> json) {
  return WCProductMetaData(
    json['id'] as int,
    json['key'] as String,
    json['value'],
  );
}

Map<String, dynamic> _$WCProductMetaDataToJson(WCProductMetaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };
