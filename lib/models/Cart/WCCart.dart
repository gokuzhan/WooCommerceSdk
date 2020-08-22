import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/Cart/WCCartItemPriceTotal.dart';
import 'package:woocommerce_sdk/models/Shipping/Method/WCShippingMethodFlatRate.dart';
import 'package:woocommerce_sdk/woocommerce_sdk.dart';

part 'WCCart.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCCart {
  final List<WCCoupon> coupons;
  final List<WCShippingMethodFlatRate> shippingRates;
  final WCShippingAddress shippingAddress;
  final List<WCCartItem> items;
  final int itemsCount;
  final int itemsWeight;
  final bool needsPayment;
  final bool needsShipping;
  final WCCartItemPriceTotal totals;
  final List<Map<String, dynamic>> errors;

  WCCart(
      this.coupons,
      this.shippingRates,
      this.shippingAddress,
      this.items,
      this.itemsCount,
      this.itemsWeight,
      this.needsPayment,
      this.needsShipping,
      this.totals,
      this.errors);

  factory WCCart.fromJson(Map<String, dynamic> json) => _$WCCartFromJson(json);

  Map<String, dynamic> toJson() => _$WCCartToJson(this);
}
