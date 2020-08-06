import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneCollection.g.dart';

@JsonSerializable()
class WCShippingZoneCollection {
  final String href;

  WCShippingZoneCollection(this.href);

  factory WCShippingZoneCollection.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneCollectionToJson(this);
}
