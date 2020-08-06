import 'package:json_annotation/json_annotation.dart';

part 'WCProductVariationImage.g.dart';

@JsonSerializable()
class WCProductVariationImage {
  final int id;
  final DateTime dateCreated;
  final DateTime dateCreatedGMT;
  final DateTime dateModified;
  final DateTime dateModifiedGMT;
  final String src;
  final String name;
  final String alt;

  WCProductVariationImage(this.id, this.dateCreated, this.dateCreatedGMT,
      this.dateModified, this.dateModifiedGMT, this.src, this.name, this.alt);

  factory WCProductVariationImage.fromJson(Map<String, dynamic> json) =>
      _$WCProductVariationImageFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductVariationImageToJson(this);
}
