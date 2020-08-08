// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WCOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCOrder _$WCOrderFromJson(Map<String, dynamic> json) {
  return WCOrder(
    json['id'] as int,
    json['parent_id'] as int,
    json['number'] as String,
    json['order_key'] as String,
    json['created_via'] as String,
    json['version'] as String,
    json['status'] as String,
    json['currency'] as String,
    json['date_created'] as String,
    json['date_created_gmt'] as String,
    json['date_modified'] as String,
    json['date_modified_gmt'] as String,
    json['discount_total'] as String,
    json['discount_tax'] as String,
    json['shipping_total'] as String,
    json['shipping_tax'] as String,
    json['cart_tax'] as String,
    json['total'] as String,
    json['total_tax'] as String,
    json['prices_include_tax'] as bool,
    json['customer_id'] as int,
    json['customer_ip_address'] as String,
    json['customer_user_agent'] as String,
    json['customer_note'] as String,
    json['billing'] == null
        ? null
        : Billing.fromJson(json['billing'] as Map<String, dynamic>),
    json['shipping'] == null
        ? null
        : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
    json['payment_method'] as String,
    json['payment_method_title'] as String,
    json['transaction_id'] as String,
    json['date_paid'] as String,
    json['date_paid_gmt'] as String,
    json['date_completed'] as String,
    json['date_completed_gmt'] as String,
    json['cart_hash'] as String,
    (json['meta_data'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderMetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['line_items'] as List)
        ?.map((e) =>
            e == null ? null : LineItems.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['tax_lines'] as List)
        ?.map((e) =>
            e == null ? null : TaxLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['shipping_lines'] as List)
        ?.map((e) => e == null
            ? null
            : ShippingLines.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['fee_lines'] as List)
        ?.map((e) => e == null
            ? null
            : WCOrderFeeLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['coupon_lines'] as List)
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
      'parent_id': instance.parentId,
      'number': instance.number,
      'order_key': instance.orderKey,
      'created_via': instance.createdVia,
      'version': instance.version,
      'status': instance.status,
      'currency': instance.currency,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'discount_total': instance.discountTotal,
      'discount_tax': instance.discountTax,
      'shipping_total': instance.shippingTotal,
      'shipping_tax': instance.shippingTax,
      'cart_tax': instance.cartTax,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'prices_include_tax': instance.pricesIncludeTax,
      'customer_id': instance.customerId,
      'customer_ip_address': instance.customerIpAddress,
      'customer_user_agent': instance.customerUserAgent,
      'customer_note': instance.customerNote,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'payment_method': instance.paymentMethod,
      'payment_method_title': instance.paymentMethodTitle,
      'transaction_id': instance.transactionId,
      'date_paid': instance.datePaid,
      'date_paid_gmt': instance.datePaidGmt,
      'date_completed': instance.dateCompleted,
      'date_completed_gmt': instance.dateCompletedGmt,
      'cart_hash': instance.cartHash,
      'meta_data': instance.metaData,
      'line_items': instance.lineItems,
      'tax_lines': instance.taxLines,
      'shipping_lines': instance.shippingLines,
      'fee_lines': instance.feeLines,
      'coupon_lines': instance.couponLines,
      'refunds': instance.refunds,
      'links': instance.links,
    };
