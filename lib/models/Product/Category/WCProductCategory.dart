import 'package:json_annotation/json_annotation.dart';

import 'WCProductCategoryImage.dart';
import 'WCProductCategoryLinks.dart';

part 'WCProductCategory.g.dart';

@JsonSerializable()
class WCProductCategory {
  final int id;
  final String name;
  final String slug;
  final int parent;
  final String description;
  final String display;
  final WCProductCategoryImage image;
  final int menuOrder;
  final int count;
  final WCProductCategoryLinks links;

  WCProductCategory(
      this.id,
      this.name,
      this.slug,
      this.parent,
      this.description,
      this.display,
      this.image,
      this.menuOrder,
      this.count,
      this.links);

  factory WCProductCategory.fromJson(Map<String, dynamic> json) =>
      _$WCProductCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductCategoryToJson(this);
}
