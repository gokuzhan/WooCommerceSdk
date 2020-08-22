import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/Cart/WCCartItemImages.dart';
import 'package:woocommerce_sdk/models/Cart/WCCartItemPriceTotal.dart';
import 'package:woocommerce_sdk/models/Pricing/Price.dart';

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
  final dynamic lowStockRemaining;
  final bool backordersAllowed;
  final bool soldIndividually;
  final String permalink;
  final List<WCCartItemImages> images;
  final String linePrice;
  final List<dynamic> variation;
  final Price prices;
  final WCCartItemPriceTotal totals;

  WCCartItem(
      this.key,
      this.id,
      this.quantity,
      this.quantityLimit,
      this.name,
      this.shortDescription,
      this.description,
      this.sku,
      this.lowStockRemaining,
      this.backordersAllowed,
      this.soldIndividually,
      this.permalink,
      this.images,
      this.linePrice,
      this.variation,
      this.prices,
      this.totals);

  factory WCCartItem.fromJson(Map<String, dynamic> json) =>
      _$WCCartItemFromJson(json);

  Map<String, dynamic> toJson() => _$WCCartItemToJson(this);
}
