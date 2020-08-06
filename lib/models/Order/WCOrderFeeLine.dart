import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce_sdk/models/MetaData.dart';

import 'FeeLineTax.dart';

part 'WCOrderFeeLine.g.dart';

@JsonSerializable()
class WCOrderFeeLine {
  final int id;
  final String name;
  final String taxClass;
  final String taxStatus;
  final String total;
  final String totalTax;
  final List<FeeLineTax> taxes;
  final List<MetaData> metaData;

  WCOrderFeeLine(this.id, this.name, this.taxClass, this.taxStatus, this.total,
      this.totalTax, this.taxes, this.metaData);

  factory WCOrderFeeLine.fromJson(Map<String, dynamic> json) =>
      _$WCOrderFeeLineFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderFeeLineToJson(this);
}
