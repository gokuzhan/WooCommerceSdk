import 'package:json_annotation/json_annotation.dart';

import 'WCCartItemImages.dart';

part 'WCCartItem.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCCartItem {
  final String key;
  final int id;
  final int quantity;
  final String name;
  final String sku;
  final String permalink;
  final List<WCCartItemImages> images;
  final String price;
  final String linePrice;
  final List<String> variation;

  WCCartItem(this.key, this.id, this.quantity, this.name, this.sku,
      this.permalink, this.images, this.price, this.linePrice, this.variation);

  factory WCCartItem.fromJson(Map<String, dynamic> json) =>
      _$WCCartItemFromJson(json);

  Map<String, dynamic> toJson() => _$WCCartItemToJson(this);
}
