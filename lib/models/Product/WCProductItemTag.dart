import 'package:json_annotation/json_annotation.dart';

part 'WCProductItemTag.g.dart';

@JsonSerializable()
class WCProductItemTag {
  final int id;
  final String name;
  final String slug;

  WCProductItemTag(this.id, this.name, this.slug);

  factory WCProductItemTag.fromJson(Map<String, dynamic> json) =>
      _$WCProductItemTagFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductItemTagToJson(this);
}
