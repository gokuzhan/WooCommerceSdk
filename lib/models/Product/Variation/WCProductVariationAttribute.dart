import 'package:json_annotation/json_annotation.dart';

part 'WCProductVariationAttribute.g.dart';

@JsonSerializable()
class WCProductVariationAttribute {
  final int id;
  final String name;
  final String option;

  WCProductVariationAttribute(this.id, this.name, this.option);

  factory WCProductVariationAttribute.fromJson(Map<String, dynamic> json) =>
      _$WCProductVariationAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductVariationAttributeToJson(this);
}
