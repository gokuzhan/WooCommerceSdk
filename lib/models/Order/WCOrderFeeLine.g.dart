// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderFeeLine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderFeeLine _$WCOrderFeeLineFromJson(Map<String, dynamic> json) {
  return WCOrderFeeLine(
    json['id'] as int,
    json['name'] as String,
    json['taxClass'] as String,
    json['taxStatus'] as String,
    json['total'] as String,
    json['totalTax'] as String,
    (json['taxes'] as List)
        ?.map((e) =>
            e == null ? null : FeeLineTax.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['metaData'] as List)
        ?.map((e) =>
            e == null ? null : MetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCOrderFeeLineToJson(WCOrderFeeLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'taxClass': instance.taxClass,
      'taxStatus': instance.taxStatus,
      'total': instance.total,
      'totalTax': instance.totalTax,
      'taxes': instance.taxes,
      'metaData': instance.metaData,
    };
