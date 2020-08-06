import 'package:json_annotation/json_annotation.dart';

import 'WCTaxRateCollection.dart';
import 'WCTaxRateSelf.dart';

part 'WCTaxRateLinks.g.dart';

@JsonSerializable()
class WCTaxRateLinks {
  final List<WCTaxRateSelf> self;
  final List<WCTaxRateCollection> collection;

  WCTaxRateLinks(this.self, this.collection);

  factory WCTaxRateLinks.fromJson(Map<String, dynamic> json) =>
      _$WCTaxRateLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCTaxRateLinksToJson(this);
}
