import 'package:json_annotation/json_annotation.dart';
import 'discount_value.dart';
part 'discount.g.dart';

@JsonSerializable()
class Discount {
  String name;
  String description;
  String key;
  String id;
  bool isRegional;
  DiscountValue discountValue;
  bool isInternational;
  bool isInternal;

  Discount(
      {required this.name,
      required this.description,
      required this.key,
      required this.id,
      required this.isRegional,
      required this.discountValue,
      required this.isInternal,
      required this.isInternational});
}
