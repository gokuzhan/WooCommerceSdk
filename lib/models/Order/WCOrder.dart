import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/Customer/Billing.dart';
import 'package:woocommerce_sdk/models/Customer/Shipping.dart';

import '../Links.dart';
import 'LineItems.dart';
import 'Refunds.dart';
import 'ShippingLines.dart';
import 'TaxLines.dart';
import 'WCOrderCouponLine.dart';
import 'WCOrderFeeLine.dart';
import 'WCOrderMetaData.dart';

part 'WCOrder.g.dart';

@JsonSerializable()
class WCOrder {
  final int id;
  final int parentId;
  final String number;
  final String orderKey;
  final String createdVia;
  final String version;
  final String status;
  final String currency;
  final String dateCreated;
  final String dateCreatedGmt;
  final String dateModified;
  final String dateModifiedGmt;
  final String discountTotal;
  final String discountTax;
  final String shippingTotal;
  final String shippingTax;
  final String cartTax;
  final String total;
  final String totalTax;
  final bool pricesIncludeTax;
  final int customerId;
  final String customerIpAddress;
  final String customerUserAgent;
  final String customerNote;
  final Billing billing;
  final Shipping shipping;
  final String paymentMethod;
  final String paymentMethodTitle;
  final String transactionId;
  final String datePaid;
  final String datePaidGmt;
  final String dateCompleted;
  final String dateCompletedGmt;
  final String cartHash;
  final List<WCOrderMetaData> metaData;
  final List<LineItems> lineItems;
  final List<TaxLines> taxLines;
  final List<ShippingLines> shippingLines;
  final List<WCOrderFeeLine> feeLines;
  final List<WCOrderCouponLine> couponLines;
  final List<Refunds> refunds;
  final Links links;

  WCOrder(
      this.id,
      this.parentId,
      this.number,
      this.orderKey,
      this.createdVia,
      this.version,
      this.status,
      this.currency,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.discountTotal,
      this.discountTax,
      this.shippingTotal,
      this.shippingTax,
      this.cartTax,
      this.total,
      this.totalTax,
      this.pricesIncludeTax,
      this.customerId,
      this.customerIpAddress,
      this.customerUserAgent,
      this.customerNote,
      this.billing,
      this.shipping,
      this.paymentMethod,
      this.paymentMethodTitle,
      this.transactionId,
      this.datePaid,
      this.datePaidGmt,
      this.dateCompleted,
      this.dateCompletedGmt,
      this.cartHash,
      this.metaData,
      this.lineItems,
      this.taxLines,
      this.shippingLines,
      this.feeLines,
      this.couponLines,
      this.refunds,
      this.links);

  factory WCOrder.fromJson(Map<String, dynamic> json) =>
      _$WCOrderFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderToJson(this);
}
