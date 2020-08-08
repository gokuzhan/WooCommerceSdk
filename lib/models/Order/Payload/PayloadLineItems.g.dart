// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PayloadLineItems.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadLineItems _$PayloadLineItemsFromJson(Map<String, dynamic> json) {
  return PayloadLineItems(
    json['product_id'] as int,
    json['name'] as String,
    json['variation_id'] as int,
    json['tax_class'] as String,
    json['subtotal'] as String,
    json['total'] as String,
    json['quantity'] as int,
  );
}

Map<String, dynamic> _$PayloadLineItemsToJson(PayloadLineItems instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'variation_id': instance.variationId,
      'tax_class': instance.taxClass,
      'subtotal': instance.subtotal,
      'total': instance.total,
      'quantity': instance.quantity,
    };
