import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/MetaData.dart';

part 'TaxLines.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TaxLines {
  final int id;
  final String rateCode;
  final int rateId;
  final String label;
  final bool compound;
  final String taxTotal;
  final String shippingTaxTotal;
  final List<MetaData> metaData;

  TaxLines(this.id, this.rateCode, this.rateId, this.label, this.compound,
      this.taxTotal, this.shippingTaxTotal, this.metaData);

  factory TaxLines.fromJson(Map<String, dynamic> json) =>
      _$TaxLinesFromJson(json);

  Map<String, dynamic> toJson() => _$TaxLinesToJson(this);
}
