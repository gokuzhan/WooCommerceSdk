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
    json['quantity_limit'] as int,
    json['name'] as String,
    json['short_description'] as String,
    json['description'] as String,
    json['sku'] as String,
    json['low_stock_remaining'],
    json['backorders_allowed'] as bool,
    json['sold_individually'] as bool,
    json['permalink'] as String,
    (json['images'] as List)
        ?.map((e) => e == null
            ? null
            : WCCartItemImages.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['line_price'] as String,
    json['variation'] as List,
    json['prices'] == null
        ? null
        : Price.fromJson(json['prices'] as Map<String, dynamic>),
    json['totals'] == null
        ? null
        : WCCartItemPriceTotal.fromJson(json['totals'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCCartItemToJson(WCCartItem instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id': instance.id,
      'quantity': instance.quantity,
      'quantity_limit': instance.quantityLimit,
      'name': instance.name,
      'short_description': instance.shortDescription,
      'description': instance.description,
      'sku': instance.sku,
      'low_stock_remaining': instance.lowStockRemaining,
      'backorders_allowed': instance.backordersAllowed,
      'sold_individually': instance.soldIndividually,
      'permalink': instance.permalink,
      'images': instance.images,
      'line_price': instance.linePrice,
      'variation': instance.variation,
      'prices': instance.prices,
      'totals': instance.totals,
    };
