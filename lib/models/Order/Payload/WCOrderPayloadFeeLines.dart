import 'package:json_annotation/json_annotation.dart';

import 'WCOrderPayloadMetaData.dart';

part 'WCOrderPayloadFeeLines.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCOrderPayloadFeeLines {
  final String name;
  final String taxClass;
  final String taxStatus;
  final String total;
  final List<WCOrderPayloadMetaData> metaData;

  WCOrderPayloadFeeLines(
      this.name, this.taxClass, this.taxStatus, this.total, this.metaData);

  factory WCOrderPayloadFeeLines.fromJson(Map<String, dynamic> json) =>
      _$WCOrderPayloadFeeLinesFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderPayloadFeeLinesToJson(this);
}
