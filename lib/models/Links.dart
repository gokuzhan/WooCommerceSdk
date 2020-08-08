import 'package:json_annotation/json_annotation.dart';

import 'Collection.dart';
import 'Self.dart';

part 'Links.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Links {
  final List<Self> self;
  final List<Collection> collection;

  Links(this.self, this.collection);

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
