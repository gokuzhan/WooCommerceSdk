// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderFeeLine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderFeeLine _$WCOrderFeeLineFromJson(Map<String, dynamic> json) {
  return WCOrderFeeLine(
    json['id'] as int,
    json['name'] as String,
    json['tax_class'] as String,
    json['tax_status'] as String,
    json['total'] as String,
    json['total_tax'] as String,
    (json['taxes'] as List)
        ?.map((e) =>
            e == null ? null : FeeLineTax.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['meta_data'] as List)
        ?.map((e) =>
            e == null ? null : MetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCOrderFeeLineToJson(WCOrderFeeLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tax_class': instance.taxClass,
      'tax_status': instance.taxStatus,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'taxes': instance.taxes,
      'meta_data': instance.metaData,
    };
