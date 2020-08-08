import 'package:json_annotation/json_annotation.dart';

part 'WCShippingMethodShippingClasses.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingMethodShippingClasses {
  final String id;
  final String cost;

  WCShippingMethodShippingClasses(this.id, this.cost);

  factory WCShippingMethodShippingClasses.fromJson(Map<String, dynamic> json) =>
      _$WCShippingMethodShippingClassesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WCShippingMethodShippingClassesToJson(this);
}
