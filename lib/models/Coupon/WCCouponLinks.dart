import 'package:json_annotation/json_annotation.dart';

import '../Collection.dart';
import '../Self.dart';

part 'WCCouponLinks.g.dart';

@JsonSerializable()
class WCCouponLinks {
  final List<Self> self;
  final List<Collection> collection;

  WCCouponLinks(this.self, this.collection);

  factory WCCouponLinks.fromJson(Map<String, dynamic> json) =>
      _$WCCouponLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCCouponLinksToJson(this);
}
