// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrder _$WCOrderFromJson(Map<String, dynamic> json) {
  return WCOrder(
    json['id'] as int,
    json['parentId'] as int,
    json['number'] as String,
    json['orderKey'] as String,
    json['createdVia'] as String,
    json['version'] as String,
    json['status'] as String,
    json['currency'] as String,
    json['dateCreated'] as String,
    json['dateCreatedGmt'] as String,
    json['dateModified'] as String,
    json['dateModifiedGmt'] as String,
    json['discountTotal'] as String,
    json['discountTax'] as String,
    json['shippingTotal'] as String,
    json['shippingTax'] as String,
    json['cartTax'] as String,
    json['total'] as String,
    json['totalTax'] as String,
    json['pricesIncludeTax'] as bool,
    json['customerId'] as int,
    json['customerIpAddress'] as String,
    json['customerUserAgent'] as String,
    json['customerNote'] as String,
    json['billing'] == null
        ? null
        : Billing.fromJson(json['billing'] as Map<String, dynamic>),
    json['shipping'] == null
        ? null
        : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
    json['paymentMethod'] as String,
    json['paymentMethodTitle'] as String,
    json['transactionId'] as String,
    json['datePaid'] as String,
    json['datePaidGmt'] as String,
    json['dateCompleted'] as String,
    json['dateCompletedGmt'] as String,
    json['cartHash'] as String,
    (json['metaData'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['lineItems'] as List)
        ?.map((e) =>
            e == null ? null : LineItems.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['taxLines'] as List)
        ?.map((e) =>
            e == null ? null : TaxLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['shippingLines'] as List)
        ?.map((e) => e == null
            ? null
            : ShippingLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['feeLines'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderFeeLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['couponLines'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderCouponLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['refunds'] as List)
        ?.map((e) =>
            e == null ? null : Refunds.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WCOrderToJson(WCOrder instance) => <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'number': instance.number,
      'orderKey': instance.orderKey,
      'createdVia': instance.createdVia,
      'version': instance.version,
      'status': instance.status,
      'currency': instance.currency,
      'dateCreated': instance.dateCreated,
      'dateCreatedGmt': instance.dateCreatedGmt,
      'dateModified': instance.dateModified,
      'dateModifiedGmt': instance.dateModifiedGmt,
      'discountTotal': instance.discountTotal,
      'discountTax': instance.discountTax,
      'shippingTotal': instance.shippingTotal,
      'shippingTax': instance.shippingTax,
      'cartTax': instance.cartTax,
      'total': instance.total,
      'totalTax': instance.totalTax,
      'pricesIncludeTax': instance.pricesIncludeTax,
      'customerId': instance.customerId,
      'customerIpAddress': instance.customerIpAddress,
      'customerUserAgent': instance.customerUserAgent,
      'customerNote': instance.customerNote,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'paymentMethod': instance.paymentMethod,
      'paymentMethodTitle': instance.paymentMethodTitle,
      'transactionId': instance.transactionId,
      'datePaid': instance.datePaid,
      'datePaidGmt': instance.datePaidGmt,
      'dateCompleted': instance.dateCompleted,
      'dateCompletedGmt': instance.dateCompletedGmt,
      'cartHash': instance.cartHash,
      'metaData': instance.metaData,
      'lineItems': instance.lineItems,
      'taxLines': instance.taxLines,
      'shippingLines': instance.shippingLines,
      'feeLines': instance.feeLines,
      'couponLines': instance.couponLines,
      'refunds': instance.refunds,
      'links': instance.links,
    };
