import 'package:json_annotation/json_annotation.dart';

import 'WCShippingZoneMethodCollection.dart';
import 'WCShippingZoneMethodDescribes.dart';
import 'WCShippingZoneMethodSelf.dart';

part 'WCShippingZoneMethodLinks.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneMethodLinks {
  final List<WCShippingZoneMethodSelf> self;
  final List<WCShippingZoneMethodCollection> collection;
  final List<WCShippingZoneMethodDescribes> describes;

  WCShippingZoneMethodLinks(this.self, this.collection, this.describes);

  factory WCShippingZoneMethodLinks.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodLinksToJson(this);
}
