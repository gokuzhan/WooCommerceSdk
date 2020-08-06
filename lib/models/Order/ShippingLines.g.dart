// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ShippingLines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingLines _$ShippingLinesFromJson(Map<String, dynamic> json) {
  return ShippingLines(
    json['id'] as int,
    json['methodTitle'] as String,
    json['methodId'] as String,
    json['total'] as String,
    json['totalTax'] as String,
    (json['taxes'] as List)
        ?.map(
            (e) => e == null ? null : Taxes.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['metaData'] as List)
        ?.map((e) =>
            e == null ? null : MetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ShippingLinesToJson(ShippingLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'methodTitle': instance.methodTitle,
      'methodId': instance.methodId,
      'total': instance.total,
      'totalTax': instance.totalTax,
      'taxes': instance.taxes,
      'metaData': instance.metaData,
    };
