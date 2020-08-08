import 'package:json_annotation/json_annotation.dart';

import 'WCShippingZoneMethodClassCost91.dart';
import 'WCShippingZoneMethodClassCost92.dart';
import 'WCShippingZoneMethodClassCosts.dart';
import 'WCShippingZoneMethodCost.dart';
import 'WCShippingZoneMethodNoClassCost.dart';
import 'WCShippingZoneMethodTaxStatus.dart';
import 'WCShippingZoneMethodTitle.dart';
import 'WCShippingZoneMethodType.dart';

part 'WCShippingZoneMethodSettings.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethodSettings {
  final WCShippingZoneMethodTitle title;
  final WCShippingZoneMethodTaxStatus taxStatus;
  final WCShippingZoneMethodCost cost;
  final WCShippingZoneMethodClassCosts classCosts;
  final WCShippingZoneMethodClassCost92 classCost92;
  final WCShippingZoneMethodClassCost91 classCost91;
  final WCShippingZoneMethodNoClassCost noClassCost;
  final WCShippingZoneMethodType type;

  WCShippingZoneMethodSettings(
      this.title,
      this.taxStatus,
      this.cost,
      this.classCosts,
      this.classCost92,
      this.classCost91,
      this.noClassCost,
      this.type);

  factory WCShippingZoneMethodSettings.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodSettingsToJson(this);
}
