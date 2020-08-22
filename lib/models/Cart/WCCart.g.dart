// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCCart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCCart _$WCCartFromJson(Map<String, dynamic> json) {
  return WCCart(
    (json['coupons'] as List)
        ?.map((e) =>
            e == null ? null : WCCoupon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['shipping_rates'] as List)
        ?.map((e) => e == null
            ? null
            : WCShippingMethodFlatRate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['shipping_address'] == null
        ? null
        : WCShippingAddress.fromJson(
            json['shipping_address'] as Map<String, dynamic>),
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : WCCartItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['items_count'] as int,
    json['items_weight'] as int,
    json['needs_payment'] as bool,
    json['needs_shipping'] as bool,
    json['totals'] == null
        ? null
        : WCCartTotal.fromJson(json['totals'] as Map<String, dynamic>),
    (json['errors'] as List)?.map((e) => e as Map<String, dynamic>)?.toList(),
  );
}

Map<String, dynamic> _$WCCartToJson(WCCart instance) => <String, dynamic>{
      'coupons': instance.coupons,
      'shipping_rates': instance.shippingRates,
      'shipping_address': instance.shippingAddress,
      'items': instance.items,
      'items_count': instance.itemsCount,
      'items_weight': instance.itemsWeight,
      'needs_payment': instance.needsPayment,
      'needs_shipping': instance.needsShipping,
      'totals': instance.totals,
      'errors': instance.errors,
    };
