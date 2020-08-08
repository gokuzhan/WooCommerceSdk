import 'package:json_annotation/json_annotation.dart';

part 'WCProductCategoryImage.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductCategoryImage {
  final int id;
  final String dateCreated;
  final String dateCreatedGmt;
  final String dateModified;
  final String dateModifiedGmt;
  final String src;
  final String name;
  final String alt;

  WCProductCategoryImage(this.id, this.dateCreated, this.dateCreatedGmt,
      this.dateModified, this.dateModifiedGmt, this.src, this.name, this.alt);

  factory WCProductCategoryImage.fromJson(Map<String, dynamic> json) =>
      _$WCProductCategoryImageFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductCategoryImageToJson(this);
}
