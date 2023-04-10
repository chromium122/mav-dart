// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Discount _$DiscountFromJson(Map<String, dynamic> json) => Discount(
      name: json['name'] as String,
      description: json['description'] as String,
      key: json['key'] as String,
      id: json['id'] as String,
      isRegional: json['isRegional'] as bool,
      discountValue:
          DiscountValue.fromJson(json['discountValue'] as Map<String, dynamic>),
      isInternal: json['isInternal'] as bool,
      isInternational: json['isInternational'] as bool,
    );

Map<String, dynamic> _$DiscountToJson(Discount instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'key': instance.key,
      'id': instance.id,
      'isRegional': instance.isRegional,
      'discountValue': instance.discountValue,
      'isInternational': instance.isInternational,
      'isInternal': instance.isInternal,
    };
