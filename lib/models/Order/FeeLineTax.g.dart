// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FeeLineTax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeeLineTax _$FeeLineTaxFromJson(Map<String, dynamic> json) {
  return FeeLineTax(
    json['id'] as int,
    json['rate_code'] as String,
    json['rate_id'] as int,
    json['label'] as String,
    json['compound'] as bool,
    json['tax_total'] as String,
    json['shipping_tax_total'] as String,
    (json['meta_data'] as List)
        ?.map((e) =>
            e == null ? null : MetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FeeLineTaxToJson(FeeLineTax instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate_code': instance.rateCode,
      'rate_id': instance.rateId,
      'label': instance.label,
      'compound': instance.compound,
      'tax_total': instance.taxTotal,
      'shipping_tax_total': instance.shippingTaxTotal,
      'meta_data': instance.metaData,
    };
