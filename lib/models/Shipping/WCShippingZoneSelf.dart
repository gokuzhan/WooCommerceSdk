import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneSelf.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneSelf {
  final String href;

  WCShippingZoneSelf(this.href);

  factory WCShippingZoneSelf.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneSelfToJson(this);
}
