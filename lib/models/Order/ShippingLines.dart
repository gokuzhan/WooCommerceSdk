import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/MetaData.dart';

import 'Taxes.dart';

part 'ShippingLines.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ShippingLines {
  final int id;
  final String methodTitle;
  final String methodId;
  final String total;
  final String totalTax;
  final List<Taxes> taxes;
  final List<MetaData> metaData;

  ShippingLines(this.id, this.methodTitle, this.methodId, this.total,
      this.totalTax, this.taxes, this.metaData);

  factory ShippingLines.fromJson(Map<String, dynamic> json) =>
      _$ShippingLinesFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingLinesToJson(this);
}
