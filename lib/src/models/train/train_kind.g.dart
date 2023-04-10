// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_kind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainKind _$TrainKindFromJson(Map<String, dynamic> json) => TrainKind(
      name: json['name'] as String,
      shortName: json['sortName'] as String?,
      code: json['code'] as String,
      priority: json['priority'] as int,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      sign: json['sign'] as Map<String, dynamic>?,
      startStation:
          Station.fromJson(json['startStation'] as Map<String, dynamic>),
      endStation: Station.fromJson(json['endStation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrainKindToJson(TrainKind instance) => <String, dynamic>{
      'name': instance.name,
      'sortName': instance.shortName,
      'code': instance.code,
      'priority': instance.priority,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'sign': instance.sign,
      'startStation': instance.startStation,
      'endStation': instance.endStation,
    };
