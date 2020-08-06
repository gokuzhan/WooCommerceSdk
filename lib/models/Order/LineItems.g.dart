// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LineItems.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineItems _$LineItemsFromJson(Map<String, dynamic> json) {
  return LineItems(
    json['id'] as int,
    json['name'] as String,
    json['productId'] as int,
    json['variationId'] as int,
    json['quantity'] as int,
    json['taxClass'] as String,
    json['subtotal'] as String,
    json['subtotalTax'] as String,
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
    json['sku'] as String,
    json['price'] as String,
  );
}

Map<String, dynamic> _$LineItemsToJson(LineItems instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'productId': instance.productId,
      'variationId': instance.variationId,
      'quantity': instance.quantity,
      'taxClass': instance.taxClass,
      'subtotal': instance.subtotal,
      'subtotalTax': instance.subtotalTax,
      'total': instance.total,
      'totalTax': instance.totalTax,
      'taxes': instance.taxes,
      'metaData': instance.metaData,
      'sku': instance.sku,
      'price': instance.price,
    };
