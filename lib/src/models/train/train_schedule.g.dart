// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainSchedule _$TrainScheduleFromJson(Map<String, dynamic> json) =>
    TrainSchedule(
      station: Station.fromJson(json['station'] as Map<String, dynamic>),
      arrive: json['arrive'] == null
          ? null
          : DateTime.parse(json['arrive'] as String),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      actualOrEstimatedArrive: json['actualOrEstimatedArrive'] == null
          ? null
          : DateTime.parse(json['actualOrEstimatedArrive'] as String),
      actualOrEstimatedStart: json['actualOrEstimatedStart'] == null
          ? null
          : DateTime.parse(json['actualOrEstimatedStart'] as String),
      startTrack: json['startTrack'] as String?,
      startTrackType: json['startTrackType'] as String?,
      endTrack: json['endTrack'] as String?,
      endTrackType: json['endTrackType'] as String?,
      services: (json['services'] as List<dynamic>)
          .map((e) => TrainService.fromJson(e as Map<String, dynamic>))
          .toList(),
      stopKind: json['stopKind'] as int?,
      stopService:
          TrainService.fromJson(json['stopService'] as Map<String, dynamic>),
      distance: json['distance'] as int?,
      startTimeZone: json['startTimeZone'] as String?,
      arriveTimeZone: json['arriveTimeZone'] as String?,
    );

Map<String, dynamic> _$TrainScheduleToJson(TrainSchedule instance) =>
    <String, dynamic>{
      'station': instance.station,
      'arrive': instance.arrive?.toIso8601String(),
      'start': instance.start?.toIso8601String(),
      'actualOrEstimatedArrive':
          instance.actualOrEstimatedArrive?.toIso8601String(),
      'actualOrEstimatedStart':
          instance.actualOrEstimatedStart?.toIso8601String(),
      'startTrack': instance.startTrack,
      'startTrackType': instance.startTrackType,
      'endTrack': instance.endTrack,
      'endTrackType': instance.endTrackType,
      'services': instance.services,
      'stopKind': instance.stopKind,
      'stopService': instance.stopService,
      'distance': instance.distance,
      'startTimeZone': instance.startTimeZone,
      'arriveTimeZone': instance.arriveTimeZone,
    };
