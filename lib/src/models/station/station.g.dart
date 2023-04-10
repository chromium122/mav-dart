// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Station _$StationFromJson(Map<String, dynamic> json) => Station(
      name: json['name'] as String,
      id: json['id'] as int,
      isAlias: json['isAlias'] as bool,
      code: json['code'] as String,
      baseCode: json['baseCode'] as String?,
      isInternational: json['isInternational'] as bool?,
      canUseForOfferRequest: json['canUseForOfferRequest'] as bool?,
      canUseForPassangerInformation:
          json['canUseForPessengerInformation'] as bool?,
      country: json['country'] as String?,
      countryISO: json['countryISO'] as String?,
    );

Map<String, dynamic> _$StationToJson(Station instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'isAlias': instance.isAlias,
      'code': instance.code,
      'baseCode': instance.baseCode,
      'isInternational': instance.isInternational,
      'canUseForOfferRequest': instance.canUseForOfferRequest,
      'canUseForPessengerInformation': instance.canUseForPassangerInformation,
      'country': instance.country,
      'countryISO': instance.countryISO,
    };
