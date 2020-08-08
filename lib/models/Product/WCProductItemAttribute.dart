import 'package:json_annotation/json_annotation.dart';

part 'WCProductItemAttribute.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductItemAttribute {
  final int id;
  final String name;
  final int position;
  final bool visible;
  final bool variation;
  final List<String> options;

  WCProductItemAttribute(this.id, this.name, this.position, this.visible,
      this.variation, this.options);

  factory WCProductItemAttribute.fromJson(Map<String, dynamic> json) =>
      _$WCProductItemAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductItemAttributeToJson(this);
}
