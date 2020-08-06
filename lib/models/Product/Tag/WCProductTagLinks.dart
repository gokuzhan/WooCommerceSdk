import 'package:json_annotation/json_annotation.dart';

import 'WCProductTagCollection.dart';
import 'WCProductTagSelf.dart';

part 'WCProductTagLinks.g.dart';

@JsonSerializable()
class WCProductTagLinks {
  final List<WCProductTagSelf> self;
  final List<WCProductTagCollection> collection;

  WCProductTagLinks(this.self, this.collection);

  factory WCProductTagLinks.fromJson(Map<String, dynamic> json) =>
      _$WCProductTagLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductTagLinksToJson(this);
}
