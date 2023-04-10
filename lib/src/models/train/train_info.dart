import 'train.dart';
import 'train_schedule.dart';

import 'package:json_annotation/json_annotation.dart';
part 'train_info.g.dart';

@JsonSerializable()
class TrainInfo {
  Train train;
  List<TrainSchedule> scheduler;

  TrainInfo({
    required this.train,
    required this.scheduler,
  });

  factory TrainInfo.fromJson(Map<String, dynamic> json) =>
      _$TrainInfoFromJson(json);
  Map<String, dynamic> toJson() => _$TrainInfoToJson(this);
}
