// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrderPayload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrderPayload _$WCOrderPayloadFromJson(Map<String, dynamic> json) {
  return WCOrderPayload(
    json['paymentMethod'] as String,
    json['paymentMethodTitle'] as String,
    json['setPaid'] as bool,
    json['status'] as String,
    json['currency'] as String,
    json['customerId'] as int,
    json['customerNote'] as String,
    json['parentId'] as int,
    (json['metaData'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderPayloadMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['feeLines'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderPayloadFeeLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['couponLines'] as List)
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
    (json['lineItems'] as List)
        ?.map((e) => e == null
            ? null
            : PayloadLineItems.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['shippingLines'] as List)
        ?.map((e) => e == null
            ? null
            : PayloadShippingLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WCOrderPayloadToJson(WCOrderPayload instance) =>
    <String, dynamic>{
      'paymentMethod': instance.paymentMethod,
      'paymentMethodTitle': instance.paymentMethodTitle,
      'setPaid': instance.setPaid,
      'status': instance.status,
      'currency': instance.currency,
      'customerId': instance.customerId,
      'customerNote': instance.customerNote,
      'parentId': instance.parentId,
      'metaData': instance.metaData,
      'feeLines': instance.feeLines,
      'couponLines': instance.couponLines,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'lineItems': instance.lineItems,
      'shippingLines': instance.shippingLines,
    };
