import 'package:json_annotation/json_annotation.dart';

part 'WCProductAttributeTermCollection.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCProductAttributeTermCollection {
  final String href;

  WCProductAttributeTermCollection(this.href);

  factory WCProductAttributeTermCollection.fromJson(
          Map<String, dynamic> json) =>
      _$WCProductAttributeTermCollectionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WCProductAttributeTermCollectionToJson(this);
}
