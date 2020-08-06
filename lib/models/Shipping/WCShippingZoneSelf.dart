import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneSelf.g.dart';

@JsonSerializable()
class WCShippingZoneSelf {
  final String href;

  WCShippingZoneSelf(this.href);

  factory WCShippingZoneSelf.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneSelfToJson(this);
}
