import 'package:json_annotation/json_annotation.dart';

part 'WCProductShippingClassCollection.g.dart';

@JsonSerializable()
class WCProductShippingClassCollection {
  final String href;

  WCProductShippingClassCollection(this.href);

  factory WCProductShippingClassCollection.fromJson(
          Map<String, dynamic> json) =>
      _$WCProductShippingClassCollectionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WCProductShippingClassCollectionToJson(this);
}
