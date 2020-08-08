import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/MetaData.dart';

import 'Taxes.dart';

part 'LineItems.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LineItems {
  final int id;
  final String name;
  final int productId;
  final int variationId;
  final int quantity;
  final String taxClass;
  final String subtotal;
  final String subtotalTax;
  final String total;
  final String totalTax;
  final List<Taxes> taxes;
  final List<MetaData> metaData;
  final String sku;
  final String price;

  LineItems(
      this.id,
      this.name,
      this.productId,
      this.variationId,
      this.quantity,
      this.taxClass,
      this.subtotal,
      this.subtotalTax,
      this.total,
      this.totalTax,
      this.taxes,
      this.metaData,
      this.sku,
      this.price);

  factory LineItems.fromJson(Map<String, dynamic> json) =>
      _$LineItemsFromJson(json);

  Map<String, dynamic> toJson() => _$LineItemsToJson(this);
}
