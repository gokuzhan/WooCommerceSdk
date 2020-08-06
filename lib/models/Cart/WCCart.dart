import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/Cart/WCCartItem.dart';

part 'WCCart.g.dart';

@JsonSerializable()
class WCCart {
  final String currency;
  final int itemCount;
  final List<WCCartItem> items;
  final bool needsShipping;
  final String totalPrice;
  final int totalWeight;

  WCCart(this.currency, this.itemCount, this.items, this.needsShipping,
      this.totalPrice, this.totalWeight);

  factory WCCart.fromJson(Map<String, dynamic> json) => _$WCCartFromJson(json);

  Map<String, dynamic> toJson() => _$WCCartToJson(this);
}
