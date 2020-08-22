import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/Cart/WCCartItemImages.dart';
import 'package:woocommerce_sdk/models/Pricing/Price.dart';
import 'package:woocommerce_sdk/models/Pricing/PriceTotal.dart';

part 'WCCartItem.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCCartItem {
  final String key;
  final int id;
  final int quantity;
  final int quantityLimit;
  final String name;
  final String shortDescription;
  final String description;
  final String sku;
  final String permalink;
  final List<WCCartItemImages> images;
  final String price;
  final String linePrice;
  final List<String> variation;
  final dynamic lowStockRemaining;
  final bool backordersAllowed;
  final bool soldIndividually;
  final Price prices;
  final PriceTotal totals;

  WCCartItem(
      this.key,
      this.id,
      this.quantity,
      this.quantityLimit,
      this.name,
      this.shortDescription,
      this.description,
      this.sku,
      this.permalink,
      this.images,
      this.price,
      this.linePrice,
      this.variation,
      this.lowStockRemaining,
      this.backordersAllowed,
      this.soldIndividually,
      this.prices,
      this.totals);

  factory WCCartItem.fromJson(Map<String, dynamic> json) =>
      _$WCCartItemFromJson(json);

  Map<String, dynamic> toJson() => _$WCCartItemToJson(this);
}
