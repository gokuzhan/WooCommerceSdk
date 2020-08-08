import 'package:json_annotation/json_annotation.dart';

part 'WCProductCategoryCollection.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductCategoryCollection {
  final String href;

  WCProductCategoryCollection(this.href);

  factory WCProductCategoryCollection.fromJson(Map<String, dynamic> json) =>
      _$WCProductCategoryCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WCProductCategoryCollectionToJson(this);
}
