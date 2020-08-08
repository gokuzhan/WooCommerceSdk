import 'package:json_annotation/json_annotation.dart';

part 'WCProductAttributeTermSelf.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductAttributeTermSelf {
  final String href;

  WCProductAttributeTermSelf(this.href);

  factory WCProductAttributeTermSelf.fromJson(Map<String, dynamic> json) =>
      _$WCProductAttributeTermSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductAttributeTermSelfToJson(this);
}
