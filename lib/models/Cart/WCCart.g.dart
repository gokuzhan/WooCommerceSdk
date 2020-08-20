// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCart _$WCCartFromJson(Map<String, dynamic> json) {
  return WCCart(
    json['currency'] as String,
    json['item_count'] as int,
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : WCCartItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['needs_shipping'] as bool,
    json['total_price'],
    json['total_weight'] as int,
  );
}

Map<String, dynamic> _$WCCartToJson(WCCart instance) => <String, dynamic>{
      'currency': instance.currency,
      'item_count': instance.itemCount,
      'items': instance.items,
      'needs_shipping': instance.needsShipping,
      'total_price': instance.totalPrice,
      'total_weight': instance.totalWeight,
    };
