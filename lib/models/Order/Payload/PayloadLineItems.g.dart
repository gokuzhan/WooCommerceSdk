// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PayloadLineItems.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadLineItems _$PayloadLineItemsFromJson(Map<String, dynamic> json) {
  return PayloadLineItems(
    json['productId'] as int,
    json['name'] as String,
    json['variationId'] as int,
    json['taxClass'] as String,
    json['subtotal'] as String,
    json['total'] as String,
    json['quantity'] as int,
  );
}

Map<String, dynamic> _$PayloadLineItemsToJson(PayloadLineItems instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'variationId': instance.variationId,
      'taxClass': instance.taxClass,
      'subtotal': instance.subtotal,
      'total': instance.total,
      'quantity': instance.quantity,
    };
