import 'package:json_annotation/json_annotation.dart';

import 'WCOrderPayloadMetaData.dart';

part 'WCOrderPayloadCouponLines.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCOrderPayloadCouponLines {
  String code;
  List<WCOrderPayloadMetaData> metaData;

  WCOrderPayloadCouponLines();

  factory WCOrderPayloadCouponLines.fromJson(Map<String, dynamic> json) =>
      _$WCOrderPayloadCouponLinesFromJson(json);

  Map<String, dynamic> toJson() => _$WCOrderPayloadCouponLinesToJson(this);
}
