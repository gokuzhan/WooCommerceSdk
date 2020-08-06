// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCart _$WCCartFromJson(Map<String, dynamic> json) {
  return WCCart(
    json['currency'] as String,
    json['itemCount'] as int,
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : WCCartItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['needsShipping'] as bool,
    json['totalPrice'] as String,
    json['totalWeight'] as int,
  );
}

Map<String, dynamic> _$WCCartToJson(WCCart instance) => <String, dynamic>{
      'currency': instance.currency,
      'itemCount': instance.itemCount,
      'items': instance.items,
      'needsShipping': instance.needsShipping,
      'totalPrice': instance.totalPrice,
      'totalWeight': instance.totalWeight,
    };
