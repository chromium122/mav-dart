import 'package:json_annotation/json_annotation.dart';
part 'customer_type.g.dart';

@JsonSerializable()
class CustomerType {
  String name;
  String key;
  int maxAge;
  int minAge;

  CustomerType({
    required this.name,
    required this.key,
    required this.maxAge,
    required this.minAge,
  });

  factory CustomerType.fromJson(Map<String, dynamic> json) =>
      _$CustomerTypeFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerTypeToJson(this);
}
