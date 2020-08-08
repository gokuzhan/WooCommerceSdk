import 'package:json_annotation/json_annotation.dart';

import 'WCProductAttributeTermCollection.dart';
import 'WCProductAttributeTermSelf.dart';

part 'WCProductAttributeTermLinks.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductAttributeTermLinks {
  final List<WCProductAttributeTermSelf> self;
  final List<WCProductAttributeTermCollection> collection;

  WCProductAttributeTermLinks(this.self, this.collection);

  factory WCProductAttributeTermLinks.fromJson(Map<String, dynamic> json) =>
      _$WCProductAttributeTermLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductAttributeTermLinksToJson(this);
}
