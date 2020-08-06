import 'package:json_annotation/json_annotation.dart';

import 'WCProductShippingClassCollection.dart';
import 'WCProductShippingClassSelf.dart';

part 'WCProductShippingClassLinks.g.dart';

@JsonSerializable()
class WCProductShippingClassLinks {
  final List<WCProductShippingClassSelf> self;
  final List<WCProductShippingClassCollection> collection;

  WCProductShippingClassLinks(this.self, this.collection);

  factory WCProductShippingClassLinks.fromJson(Map<String, dynamic> json) =>
      _$WCProductShippingClassLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductShippingClassLinksToJson(this);
}
