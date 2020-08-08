import 'package:json_annotation/json_annotation.dart';

part 'WCProductVariationAttribute.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductVariationAttribute {
  final int id;
  final String name;
  final String option;

  WCProductVariationAttribute(this.id, this.name, this.option);

  factory WCProductVariationAttribute.fromJson(Map<String, dynamic> json) =>
      _$WCProductVariationAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductVariationAttributeToJson(this);
}
