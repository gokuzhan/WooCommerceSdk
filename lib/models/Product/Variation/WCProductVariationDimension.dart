import 'package:json_annotation/json_annotation.dart';

part 'WCProductVariationDimension.g.dart';

@JsonSerializable()
class WCProductVariationDimension {
  final String length;
  final String width;
  final String height;

  WCProductVariationDimension(this.length, this.width, this.height);

  factory WCProductVariationDimension.fromJson(Map<String, dynamic> json) =>
      _$WCProductVariationDimensionFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductVariationDimensionToJson(this);
}
