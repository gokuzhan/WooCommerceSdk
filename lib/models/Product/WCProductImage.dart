import 'package:json_annotation/json_annotation.dart';

part 'WCProductImage.g.dart';

@JsonSerializable()
class WCProductImage {
  final int id;
  final DateTime dateCreated;
  final DateTime dateCreatedGMT;
  final DateTime dateModified;
  final DateTime dateModifiedGMT;
  final String src;
  final String name;
  final String alt;

  WCProductImage(this.id, this.dateCreated, this.dateCreatedGMT,
      this.dateModified, this.dateModifiedGMT, this.src, this.name, this.alt);

  factory WCProductImage.fromJson(Map<String, dynamic> json) =>
      _$WCProductImageFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductImageToJson(this);
}
