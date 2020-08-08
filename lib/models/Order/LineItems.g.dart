// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LineItems.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineItems _$LineItemsFromJson(Map<String, dynamic> json) {
  return LineItems(
    json['id'] as int,
    json['name'] as String,
    json['product_id'] as int,
    json['variation_id'] as int,
    json['quantity'] as int,
    json['tax_class'] as String,
    json['subtotal'] as String,
    json['subtotal_tax'] as String,
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
    json['sku'] as String,
    json['price'] as String,
  );
}

Map<String, dynamic> _$LineItemsToJson(LineItems instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'quantity': instance.quantity,
      'tax_class': instance.taxClass,
      'subtotal': instance.subtotal,
      'subtotal_tax': instance.subtotalTax,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'taxes': instance.taxes,
      'meta_data': instance.metaData,
      'sku': instance.sku,
      'price': instance.price,
    };
