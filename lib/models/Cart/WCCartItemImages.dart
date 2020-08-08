import 'package:json_annotation/json_annotation.dart';

part 'WCCartItemImages.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCCartItemImages {
  final String id;
  final String src;
  final String thumbnail;
  final bool srcset;
  final String sizes;
  final String name;
  final String alt;

  WCCartItemImages(this.id, this.src, this.thumbnail, this.srcset, this.sizes,
      this.name, this.alt);

  factory WCCartItemImages.fromJson(Map<String, dynamic> json) =>
      _$WCCartItemImagesFromJson(json);

  Map<String, dynamic> toJson() => _$WCCartItemImagesToJson(this);
}
