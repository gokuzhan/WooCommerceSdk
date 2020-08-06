import 'package:json_annotation/json_annotation.dart';

import 'WCProductTagLinks.dart';

part 'WCProductTag.g.dart';

@JsonSerializable()
class WCProductTag {
  final int id;
  final String name;
  final String slug;
  final String description;
  final int count;
  final WCProductTagLinks lLinks;

  WCProductTag(
      this.id, this.name, this.slug, this.description, this.count, this.lLinks);

  factory WCProductTag.fromJson(Map<String, dynamic> json) =>
      _$WCProductTagFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductTagToJson(this);
}
