// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainInfo _$TrainInfoFromJson(Map<String, dynamic> json) => TrainInfo(
      train: Train.fromJson(json['train'] as Map<String, dynamic>),
      scheduler: (json['scheduler'] as List<dynamic>)
          .map((e) => TrainSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrainInfoToJson(TrainInfo instance) => <String, dynamic>{
      'train': instance.train,
      'scheduler': instance.scheduler,
    };
