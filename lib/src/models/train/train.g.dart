// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Train _$TrainFromJson(Map<String, dynamic> json) => Train(
      name: json['name'] as String?,
      seatReservationCode: json['seatReservationCode'] as String?,
      code: json['code'] as String,
      startStationReservationCode: json['startStationReservationCode'] as int?,
      endStationReservationCode: json['endStationReservationCode'] as int?,
      startStation: json['startStation'] == null
          ? null
          : Station.fromJson(json['startStation'] as Map<String, dynamic>),
      endStation: json['endStation'] == null
          ? null
          : Station.fromJson(json['endStation'] as Map<String, dynamic>),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      origEndStation: json['origEndStation'] == null
          ? null
          : Station.fromJson(json['origEndStation'] as Map<String, dynamic>),
      origStartStation: json['origStartStation'] == null
          ? null
          : Station.fromJson(json['origStartStation'] as Map<String, dynamic>),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      virtualStart: json['virtualStart'] as bool,
      arrive: json['arrive'] == null
          ? null
          : DateTime.parse(json['arrive'] as String),
      virtualArrive: json['virtualArrive'] as bool,
      distance: json['distance'],
      closedTrackWay: json['closedTrackWay'] as bool,
      fullName: json['fullName'] as String,
      fullNameAndType: json['fullNameAndType'] as String,
      kinds: (json['kinds'] as List<dynamic>)
          .map((e) => TrainKind.fromJson(e as Map<String, dynamic>))
          .toList(),
      kindsToDisplay: (json['kindsToDisplay'] as List<dynamic>)
          .map((e) => TrainKind.fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: TrainKind.fromJson(json['kind'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>)
          .map((e) => TrainService.fromJson(e as Map<String, dynamic>))
          .toList(),
      actualOrEstimatedArrive: json['actualOrEstimatedArrive'],
      actualOrEstimatedStart: json['actualOrEstimatedStart'],
      delayInfo: DelayInfo.fromJson(json['delayInfo'] as Map<String, dynamic>),
      directTrains: json['directTrains'],
      carrierTrains: json['carrierTrains'],
      startTrack: json['startTrack'] as String?,
      startTrackType: json['startTrackType'] as String?,
      endTrack: json['endTrack'] as String?,
      endTrackType: json['endTrackType'] as String?,
      jeEszkozAlapId: (json['jeEszkozAlapId'] as num).toDouble(),
      fullShortType: json['fullShortType'] as String,
      fullType: json['fullType'] as String,
      footer: json['footer'] as String?,
      viszonylatObject: json['viszonylatObject'] as Map<String, dynamic>,
      description: json['description'] as String?,
      sameCar: json['sameCar'] as bool,
      startTimeZone: json['startTimeZone'],
      arriveTimeZone: json['arriveTimeZone'],
      trainId: json['trainId'] as String,
    );

Map<String, dynamic> _$TrainToJson(Train instance) => <String, dynamic>{
      'name': instance.name,
      'seatReservationCode': instance.seatReservationCode,
      'code': instance.code,
      'startStationReservationCode': instance.startStationReservationCode,
      'endStationReservationCode': instance.endStationReservationCode,
      'startStation': instance.startStation,
      'endStation': instance.endStation,
      'startDate': instance.startDate?.toIso8601String(),
      'origStartStation': instance.origStartStation,
      'origEndStation': instance.origEndStation,
      'start': instance.start?.toIso8601String(),
      'virtualStart': instance.virtualStart,
      'arrive': instance.arrive?.toIso8601String(),
      'virtualArrive': instance.virtualArrive,
      'distance': instance.distance,
      'closedTrackWay': instance.closedTrackWay,
      'fullName': instance.fullName,
      'fullNameAndType': instance.fullNameAndType,
      'kinds': instance.kinds,
      'kindsToDisplay': instance.kindsToDisplay,
      'kind': instance.kind,
      'services': instance.services,
      'actualOrEstimatedStart': instance.actualOrEstimatedStart,
      'actualOrEstimatedArrive': instance.actualOrEstimatedArrive,
      'delayInfo': instance.delayInfo,
      'directTrains': instance.directTrains,
      'carrierTrains': instance.carrierTrains,
      'startTrack': instance.startTrack,
      'startTrackType': instance.startTrackType,
      'endTrack': instance.endTrack,
      'endTrackType': instance.endTrackType,
      'jeEszkozAlapId': instance.jeEszkozAlapId,
      'fullType': instance.fullType,
      'fullShortType': instance.fullShortType,
      'footer': instance.footer,
      'viszonylatObject': instance.viszonylatObject,
      'description': instance.description,
      'sameCar': instance.sameCar,
      'startTimeZone': instance.startTimeZone,
      'arriveTimeZone': instance.arriveTimeZone,
      'trainId': instance.trainId,
    };
