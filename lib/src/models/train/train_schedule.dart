import 'train_service.dart';
import '../station/station.dart';

import 'package:json_annotation/json_annotation.dart';
part 'train_schedule.g.dart';

@JsonSerializable()
class TrainSchedule {
  Station station;
  DateTime? arrive;
  DateTime? start;
  DateTime? actualOrEstimatedArrive;
  DateTime? actualOrEstimatedStart;
  String? startTrack;
  String? startTrackType;
  String? endTrack;
  String? endTrackType;
  List<TrainService> services;
  int? stopKind;
  TrainService stopService; // all are null, don't expect much
  int? distance;
  String? startTimeZone; // i have no clue about this weird format
  String? arriveTimeZone;

  TrainSchedule({
    required this.station,
    this.arrive,
    this.start,
    this.actualOrEstimatedArrive,
    this.actualOrEstimatedStart,
    this.startTrack,
    this.startTrackType,
    this.endTrack,
    this.endTrackType,
    required this.services,
    this.stopKind,
    required this.stopService,
    this.distance,
    this.startTimeZone,
    this.arriveTimeZone,
  });

  factory TrainSchedule.fromJson(Map<String, dynamic> json) =>
      _$TrainScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$TrainScheduleToJson(this);
}
