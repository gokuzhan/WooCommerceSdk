// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderPayloadFeeLines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderPayloadFeeLines _$WCOrderPayloadFeeLinesFromJson(
    Map<String, dynamic> json) {
  return WCOrderPayloadFeeLines(
    json['name'] as String,
    json['taxClass'] as String,
    json['taxStatus'] as String,
    json['total'] as String,
    (json['metaData'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderPayloadMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCOrderPayloadFeeLinesToJson(
        WCOrderPayloadFeeLines instance) =>
    <String, dynamic>{
      'name': instance.name,
      'taxClass': instance.taxClass,
      'taxStatus': instance.taxStatus,
      'total': instance.total,
      'metaData': instance.metaData,
    };
