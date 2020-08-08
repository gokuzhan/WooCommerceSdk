import 'package:json_annotation/json_annotation.dart';

part 'Self.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Self {
  final String href;

  Self(this.href);

  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);

  Map<String, dynamic> toJson() => _$SelfToJson(this);
}
