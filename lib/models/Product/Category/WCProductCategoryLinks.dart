import 'package:json_annotation/json_annotation.dart';

import 'WCProductCategoryCollection.dart';
import 'WCProductCategorySelf.dart';

part 'WCProductCategoryLinks.g.dart';

@JsonSerializable()
class WCProductCategoryLinks {
  final List<WCProductCategorySelf> self;
  final List<WCProductCategoryCollection> collection;

  WCProductCategoryLinks(this.self, this.collection);

  factory WCProductCategoryLinks.fromJson(Map<String, dynamic> json) =>
      _$WCProductCategoryLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductCategoryLinksToJson(this);
}
