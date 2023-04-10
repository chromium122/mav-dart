// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerType _$CustomerTypeFromJson(Map<String, dynamic> json) => CustomerType(
      name: json['name'] as String,
      key: json['key'] as String,
      maxAge: json['maxAge'] as int,
      minAge: json['minAge'] as int,
    );

Map<String, dynamic> _$CustomerTypeToJson(CustomerType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'maxAge': instance.maxAge,
      'minAge': instance.minAge,
    };
