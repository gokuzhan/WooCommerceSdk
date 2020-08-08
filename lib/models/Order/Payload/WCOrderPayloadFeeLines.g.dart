// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderPayloadFeeLines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderPayloadFeeLines _$WCOrderPayloadFeeLinesFromJson(
    Map<String, dynamic> json) {
  return WCOrderPayloadFeeLines(
    json['name'] as String,
    json['tax_class'] as String,
    json['tax_status'] as String,
    json['total'] as String,
    (json['meta_data'] as List)
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
      'tax_class': instance.taxClass,
      'tax_status': instance.taxStatus,
      'total': instance.total,
      'meta_data': instance.metaData,
    };
