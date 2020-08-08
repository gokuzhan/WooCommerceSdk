import 'package:json_annotation/json_annotation.dart';

part 'Collection.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Collection {
  final String href;

  Collection(this.href);

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}
