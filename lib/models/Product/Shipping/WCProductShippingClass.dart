import 'package:json_annotation/json_annotation.dart';

import 'WCProductShippingClassLinks.dart';

part 'WCProductShippingClass.g.dart';

@JsonSerializable()
class WCProductShippingClass {
  final int id;
  final String name;
  final String slug;
  final String description;
  final int count;
  final WCProductShippingClassLinks links;

  WCProductShippingClass(
      this.id, this.name, this.slug, this.description, this.count, this.links);

  factory WCProductShippingClass.fromJson(Map<String, dynamic> json) =>
      _$WCProductShippingClassFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductShippingClassToJson(this);
}
