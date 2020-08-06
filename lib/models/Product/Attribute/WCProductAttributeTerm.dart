import 'package:json_annotation/json_annotation.dart';

import 'WCProductAttributeTermLinks.dart';

part 'WCProductAttributeTerm.g.dart';

@JsonSerializable()
class WCProductAttributeTerm {
  final int id;
  final String name;
  final String slug;
  final String description;
  final int menuOrder;
  final int count;
  final WCProductAttributeTermLinks links;

  WCProductAttributeTerm(this.id, this.name, this.slug, this.description,
      this.menuOrder, this.count, this.links);

  factory WCProductAttributeTerm.fromJson(Map<String, dynamic> json) =>
      _$WCProductAttributeTermFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductAttributeTermToJson(this);
}
