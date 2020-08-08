import 'package:json_annotation/json_annotation.dart';

part 'WCShippingMethodLocations.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingMethodLocations {
  final String code;
  final String type;

  WCShippingMethodLocations(this.code, this.type);

  factory WCShippingMethodLocations.fromJson(Map<String, dynamic> json) =>
      _$WCShippingMethodLocationsFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingMethodLocationsToJson(this);
}
