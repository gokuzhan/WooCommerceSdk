import 'package:json_annotation/json_annotation.dart';

import 'WCShippingZoneMethodOptions.dart';

part 'WCShippingZoneMethodTaxStatus.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethodTaxStatus {
  final String id;
  final String label;
  final String description;
  final String type;
  final String value;
  final String taxDefault;
  final String tip;
  final String placeholder;
  final WCShippingZoneMethodOptions options;

  WCShippingZoneMethodTaxStatus(
      this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.taxDefault,
      this.tip,
      this.placeholder,
      this.options);

  factory WCShippingZoneMethodTaxStatus.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodTaxStatusFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodTaxStatusToJson(this);
}
