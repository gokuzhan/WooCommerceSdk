import 'package:json_annotation/json_annotation.dart';

part 'WCProductShippingClassSelf.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductShippingClassSelf {
  final String href;

  WCProductShippingClassSelf(this.href);

  factory WCProductShippingClassSelf.fromJson(Map<String, dynamic> json) =>
      _$WCProductShippingClassSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductShippingClassSelfToJson(this);
}
