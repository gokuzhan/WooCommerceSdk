// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TaxLines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxLines _$TaxLinesFromJson(Map<String, dynamic> json) {
  return TaxLines(
    json['id'] as int,
    json['rateCode'] as String,
    json['rateId'] as int,
    json['label'] as String,
    json['compound'] as bool,
    json['taxTotal'] as String,
    json['shippingTaxTotal'] as String,
    (json['metaData'] as List)
        ?.map((e) =>
            e == null ? null : MetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TaxLinesToJson(TaxLines instance) => <String, dynamic>{
      'id': instance.id,
      'rateCode': instance.rateCode,
      'rateId': instance.rateId,
      'label': instance.label,
      'compound': instance.compound,
      'taxTotal': instance.taxTotal,
      'shippingTaxTotal': instance.shippingTaxTotal,
      'metaData': instance.metaData,
    };
