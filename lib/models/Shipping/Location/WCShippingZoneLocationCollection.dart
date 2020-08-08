import 'package:json_annotation/json_annotation.dart';

part 'WCShippingZoneLocationCollection.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCShippingZoneLocationCollection {
  final String href;

  WCShippingZoneLocationCollection(this.href);

  factory WCShippingZoneLocationCollection.fromJson(
          Map<String, dynamic> json) =>
      _$WCShippingZoneLocationCollectionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WCShippingZoneLocationCollectionToJson(this);
}
