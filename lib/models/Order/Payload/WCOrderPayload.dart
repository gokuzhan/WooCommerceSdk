import 'package:json_annotation/json_annotation.dart';

import 'PayloadLineItems.dart';
import 'PayloadShippingLines.dart';
import 'WCOrderPayloadBilling.dart';
import 'WCOrderPayloadCouponLines.dart';
import 'WCOrderPayloadFeeLines.dart';
import 'WCOrderPayloadMetaData.dart';
import 'WCOrderPayloadShipping.dart';

part 'WCOrderPayload.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCOrderPayload {
  final String paymentMethod;
  final String paymentMethodTitle;
  final bool setPaid;
  final String status;
  final String currency;
  final int customerId;
  final String customerNote;
  final int parentId;
  final List<WCOrderPayloadMetaData> metaData;
  final List<WCOrderPayloadFeeLines> feeLines;
  final List<WCOrderPayloadCouponLines> couponLines;
  final WCOrderPayloadBilling billing;
  final WCOrderPayloadShipping shipping;
  final List<PayloadLineItems> lineItems;
  final List<PayloadShippingLines> shippingLines;

  WCOrderPayload(
      this.paymentMethod,
      this.paymentMethodTitle,
      this.setPaid,
      this.status,
      this.currency,
      this.customerId,
      this.customerNote,
      this.parentId,
      this.metaData,
      this.feeLines,
      this.couponLines,
      this.billing,
      this.shipping,
      this.lineItems,
      this.shippingLines);

  factory WCOrderPayload.fromJson(Map<String, dynamic> json) =>
      _$WCOrderPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderPayloadToJson(this);
}
