// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCartItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCartItem _$WCCartItemFromJson(Map<String, dynamic> json) {
  return WCCartItem(
    json['key'] as String,
    json['id'] as int,
    json['quantity'] as int,
    json['name'] as String,
    json['sku'] as String,
    json['permalink'] as String,
    (json['images'] as List)
        ?.map((e) => e == null
            ? null
            : WCCartItemImages.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['price'] as String,
    json['linePrice'] as String,
    (json['variation'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$WCCartItemToJson(WCCartItem instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id': instance.id,
      'quantity': instance.quantity,
      'name': instance.name,
      'sku': instance.sku,
      'permalink': instance.permalink,
      'images': instance.images,
      'price': instance.price,
      'linePrice': instance.linePrice,
      'variation': instance.variation,
    };
