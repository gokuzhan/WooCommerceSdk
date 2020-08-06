import 'package:json_annotation/json_annotation.dart';

import 'Describedby.dart';
import 'WCShippingZoneCollection.dart';
import 'WCShippingZoneSelf.dart';

part 'WCShippingZoneLinks.g.dart';

@JsonSerializable()
class WCShippingZoneLinks {
  final List<WCShippingZoneSelf> self;
  final List<WCShippingZoneCollection> collection;
  final List<Describedby> describedby;

  WCShippingZoneLinks(this.self, this.collection, this.describedby);

  factory WCShippingZoneLinks.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneLinksToJson(this);
}
