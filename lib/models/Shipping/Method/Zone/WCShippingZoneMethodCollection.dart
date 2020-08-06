import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneMethodCollection.g.dart';

@JsonSerializable()
class WCShippingZoneMethodCollection {
  final String href;

  WCShippingZoneMethodCollection(this.href);

  factory WCShippingZoneMethodCollection.fromJson(Map<String, dynamic> json) =>
      _$WCShippingZoneMethodCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WCShippingZoneMethodCollectionToJson(this);
}
