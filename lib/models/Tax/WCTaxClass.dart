import 'package:json_annotation/json_annotation.dart';

import 'WCTaxClassLinks.dart';

part 'WCTaxClass.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCTaxClass {
  final String slug;
  final String name;
  final WCTaxClassLinks links;

  WCTaxClass(this.slug, this.name, this.links);

  factory WCTaxClass.fromJson(Map<String, dynamic> json) =>
      _$WCTaxClassFromJson(json);

  Map<String, dynamic> toJson() => _$WCTaxClassToJson(this);
}
