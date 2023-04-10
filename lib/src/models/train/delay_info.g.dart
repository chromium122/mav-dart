// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delay_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DelayInfo _$DelayInfoFromJson(Map<String, dynamic> json) => DelayInfo(
      currentDelay: (json['currentDelay'] as num?)?.toDouble(),
      delayReason: json['delayReason'] as String?,
      delayReasons: json['delayReasons'] as List<dynamic>?,
      businessInfo: json['businessInfo'] as String?,
      delayInfo: json['delayInfo'] as String?,
    );

Map<String, dynamic> _$DelayInfoToJson(DelayInfo instance) => <String, dynamic>{
      'currentDelay': instance.currentDelay,
      'delayReason': instance.delayReason,
      'delayReasons': instance.delayReasons,
      'businessInfo': instance.businessInfo,
      'delayInfo': instance.delayInfo,
    };
