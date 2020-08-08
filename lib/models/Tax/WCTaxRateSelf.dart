import 'package:json_annotation/json_annotation.dart';

part 'WCTaxRateSelf.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCTaxRateSelf {
  final String href;

  WCTaxRateSelf(this.href);

  factory WCTaxRateSelf.fromJson(Map<String, dynamic> json) =>
      _$WCTaxRateSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCTaxRateSelfToJson(this);
}
