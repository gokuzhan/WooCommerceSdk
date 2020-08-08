// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ShippingLines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingLines _$ShippingLinesFromJson(Map<String, dynamic> json) {
  return ShippingLines(
    json['id'] as int,
    json['method_title'] as String,
    json['method_id'] as String,
    json['total'] as String,
    json['total_tax'] as String,
    (json['taxes'] as List)
        ?.map(
            (e) => e == null ? null : Taxes.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['meta_data'] as List)
        ?.map((e) =>
            e == null ? null : MetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ShippingLinesToJson(ShippingLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method_title': instance.methodTitle,
      'method_id': instance.methodId,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'taxes': instance.taxes,
      'meta_data': instance.metaData,
    };
