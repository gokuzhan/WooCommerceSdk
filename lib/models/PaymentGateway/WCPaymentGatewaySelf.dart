import 'package:json_annotation/json_annotation.dart';

part 'WCPaymentGatewaySelf.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCPaymentGatewaySelf {
  final String href;

  WCPaymentGatewaySelf(this.href);

  factory WCPaymentGatewaySelf.fromJson(Map<String, dynamic> json) =>
      _$WCPaymentGatewaySelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCPaymentGatewaySelfToJson(this);
}
