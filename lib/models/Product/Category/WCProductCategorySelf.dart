import 'package:json_annotation/json_annotation.dart';

part 'WCProductCategorySelf.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductCategorySelf {
  final String href;

  WCProductCategorySelf(this.href);

  factory WCProductCategorySelf.fromJson(Map<String, dynamic> json) =>
      _$WCProductCategorySelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductCategorySelfToJson(this);
}
