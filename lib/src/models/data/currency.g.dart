// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      key: json['key'] as String,
      name: json['name'] as String,
      isDefault: json['isDefault'] as bool,
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'isDefault': instance.isDefault,
    };
