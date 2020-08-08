import 'package:json_annotation/json_annotation.dart';

import 'WCTaxClassCollection.dart';

part 'WCTaxClassLinks.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCTaxClassLinks {
  final List<WCTaxClassCollection> collection;

  WCTaxClassLinks(this.collection);

  factory WCTaxClassLinks.fromJson(Map<String, dynamic> json) =>
      _$WCTaxClassLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCTaxClassLinksToJson(this);
}
