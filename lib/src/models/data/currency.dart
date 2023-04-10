import "package:json_annotation/json_annotation.dart";
part 'currency.g.dart';

@JsonSerializable()
class Currency {
  String key;
  String name;
  bool isDefault;

  Currency({required this.key, required this.name, required this.isDefault});
  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}
