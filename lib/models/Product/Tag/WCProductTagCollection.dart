import 'package:json_annotation/json_annotation.dart';

part 'WCProductTagCollection.g.dart';

@JsonSerializable()
class WCProductTagCollection {
  final String href;

  WCProductTagCollection(this.href);

  factory WCProductTagCollection.fromJson(Map<String, dynamic> json) =>
      _$WCProductTagCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductTagCollectionToJson(this);
}
