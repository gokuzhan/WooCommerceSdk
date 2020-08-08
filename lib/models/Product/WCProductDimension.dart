import 'package:json_annotation/json_annotation.dart';

part 'WCProductDimension.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductDimension {
  final String length;
  final String width;
  final String height;

  WCProductDimension(this.length, this.width, this.height);

  factory WCProductDimension.fromJson(Map<String, dynamic> json) =>
      _$WCProductDimensionFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductDimensionToJson(this);
}
