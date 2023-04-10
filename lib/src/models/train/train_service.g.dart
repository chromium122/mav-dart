// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainService _$TrainServiceFromJson(Map<String, dynamic> json) => TrainService(
      listOrder: json['listOrder'] as String?,
      description: json['description'] as String?,
      restrictiveEndStationCode: json['restrictiveEndStationCode'] as String?,
      restrictiveStartStationCode:
          json['restrictiveStartStationCode'] as String?,
      sign: json['sign'] as Map<String, dynamic>?,
      trainStopKind: json['trainStopKind'] as String?,
    );

Map<String, dynamic> _$TrainServiceToJson(TrainService instance) =>
    <String, dynamic>{
      'listOrder': instance.listOrder,
      'description': instance.description,
      'restrictiveStartStationCode': instance.restrictiveStartStationCode,
      'restrictiveEndStationCode': instance.restrictiveEndStationCode,
      'sign': instance.sign,
      'trainStopKind': instance.trainStopKind,
    };
