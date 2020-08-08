import 'package:json_annotation/json_annotation.dart';

import 'WCShippingZoneMethodLinks.dart';
import 'WCShippingZoneMethodSettings.dart';

part 'WCShippingZoneMethod.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethod {
  final int instanceId;
  final String title;
  final int order;
  final bool enabled;
  final String methodId;
  final String methodTitle;
  final String methodDescription;
  final WCShippingZoneMethodSettings settings;
  final WCShippingZoneMethodLinks links;

  WCShippingZoneMethod(
      this.instanceId,
      this.title,
      this.order,
      this.enabled,
      this.methodId,
      this.methodTitle,
      this.methodDescription,
      this.settings,
      this.links);

  factory WCShippingZoneMethod.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodToJson(this);
}
