import 'package:json_annotation/json_annotation.dart';

part 'WCTaxClassCollection.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WCTaxClassCollection {
  final String href;

  WCTaxClassCollection(this.href);

  factory WCTaxClassCollection.fromJson(Map<String, dynamic> json) =>
      _$WCTaxClassCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WCTaxClassCollectionToJson(this);
}
