import 'package:json_annotation/json_annotation.dart';

part 'Describedby.g.dart';

@JsonSerializable()
class Describedby {
  final String href;

  Describedby(this.href);

  factory Describedby.fromJson(Map<String, dynamic> json) =>
      _$DescribedbyFromJson(json);

  Map<String, dynamic> toJson() => _$DescribedbyToJson(this);
}
