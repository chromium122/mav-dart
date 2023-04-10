import 'package:json_annotation/json_annotation.dart';
part 'discount_prop.g.dart';

@JsonSerializable()
class DiscountProp {
  String discountId;
  String offerKind;

  DiscountProp({required this.discountId, required this.offerKind});
}
