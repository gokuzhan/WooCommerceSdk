import 'package:json_annotation/json_annotation.dart';

part 'WCProductDefaultAttribute.g.dart';

@JsonSerializable()
class WCProductDefaultAttribute {
  final int id;
  final String name;
  final String option;

  WCProductDefaultAttribute(this.id, this.name, this.option);

  factory WCProductDefaultAttribute.fromJson(Map<String, dynamic> json) =>
      _$WCProductDefaultAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductDefaultAttributeToJson(this);
}
