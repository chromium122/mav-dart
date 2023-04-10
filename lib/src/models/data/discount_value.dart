import 'package:json_annotation/json_annotation.dart';
part 'discount_value.g.dart';

@JsonSerializable()
class DiscountValue {
  int value;
  String name;

  DiscountValue({required this.value, required this.name});
  factory DiscountValue.fromJson(Map<String, dynamic> json) =>
      _$DiscountValueFromJson(json);
  Map<String, dynamic> toJson() => _$DiscountValueToJson(this);
}
