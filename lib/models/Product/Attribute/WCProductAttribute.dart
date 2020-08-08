import 'package:json_annotation/json_annotation.dart';

import 'WCProductAttributeTermLinks.dart';

part 'WCProductAttribute.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductAttribute {
  final int id;
  final String name;
  final String slug;
  final String type;
  final String orderBy;
  final bool hasArchives;
  final WCProductAttributeTermLinks links;

  WCProductAttribute(this.id, this.name, this.slug, this.type, this.orderBy,
      this.hasArchives, this.links);

  factory WCProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$WCProductAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductAttributeToJson(this);
}
