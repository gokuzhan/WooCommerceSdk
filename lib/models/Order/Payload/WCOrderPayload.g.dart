// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderPayload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderPayload _$WCOrderPayloadFromJson(Map<String, dynamic> json) {
  return WCOrderPayload(
    json['payment_method'] as String,
    json['payment_method_title'] as String,
    json['set_paid'] as bool,
    json['status'] as String,
    json['currency'] as String,
    json['customer_id'] as int,
    json['customer_note'] as String,
    json['parent_id'] as int,
    (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderPayloadMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['fee_lines'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderPayloadFeeLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['coupon_lines'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderPayloadCouponLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['billing'] == null
        ? null
        : WCOrderPayloadBilling.fromJson(
            json['billing'] as Map<String, dynamic>),
    json['shipping'] == null
        ? null
        : WCOrderPayloadShipping.fromJson(
            json['shipping'] as Map<String, dynamic>),
    (json['line_items'] as List)
        ?.map((e) => e == null
            ? null
            : PayloadLineItems.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['shipping_lines'] as List)
        ?.map((e) => e == null
            ? null
            : PayloadShippingLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCOrderPayloadToJson(WCOrderPayload instance) =>
    <String, dynamic>{
      'payment_method': instance.paymentMethod,
      'payment_method_title': instance.paymentMethodTitle,
      'set_paid': instance.setPaid,
      'status': instance.status,
      'currency': instance.currency,
      'customer_id': instance.customerId,
      'customer_note': instance.customerNote,
      'parent_id': instance.parentId,
      'meta_data': instance.metaData,
      'fee_lines': instance.feeLines,
      'coupon_lines': instance.couponLines,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'line_items': instance.lineItems,
      'shipping_lines': instance.shippingLines,
    };
