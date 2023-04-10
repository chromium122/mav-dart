// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationInfo _$StationInfoFromJson(Map<String, dynamic> json) => StationInfo(
      station: Station.fromJson(json['station'] as Map<String, dynamic>),
      arrivalScheduler: (json['arrivalScheduler'] as List<dynamic>)
          .map((e) => Train.fromJson(e as Map<String, dynamic>))
          .toList(),
      departureScheduler: (json['departureScheduler'] as List<dynamic>)
          .map((e) => Train.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StationInfoToJson(StationInfo instance) =>
    <String, dynamic>{
      'station': instance.station,
      'arrivalScheduler': instance.arrivalScheduler,
      'departureScheduler': instance.departureScheduler,
    };
