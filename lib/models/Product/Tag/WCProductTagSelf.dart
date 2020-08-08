import 'package:json_annotation/json_annotation.dart';

part 'WCProductTagSelf.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductTagSelf {
  final String href;

  WCProductTagSelf(this.href);

  factory WCProductTagSelf.fromJson(Map<String, dynamic> json) =>
      _$WCProductTagSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductTagSelfToJson(this);
}
