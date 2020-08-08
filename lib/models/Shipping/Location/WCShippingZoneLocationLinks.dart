import 'package:json_annotation/json_annotation.dart';

import 'WCShippingZoneLocationCollection.dart';
import 'WCShippingZoneLocationDescribes.dart';

part 'WCShippingZoneLocationLinks.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneLocationLinks {
  final List<WCShippingZoneLocationCollection> collection;
  final List<WCShippingZoneLocationDescribes> describes;

  WCShippingZoneLocationLinks(this.collection, this.describes);

  factory WCShippingZoneLocationLinks.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneLocationLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneLocationLinksToJson(this);
}
