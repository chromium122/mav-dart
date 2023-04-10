import '../station/station.dart';
import 'delay_info.dart';
import 'train_kind.dart';
import 'train_service.dart';

import 'package:json_annotation/json_annotation.dart';
part 'train.g.dart';

// make a pr if you figure any of this out
// route would be POST https://jegy-a.mav.hu/IK_API_PROD/api/InformationApi/GetTimetable
// payload should be {"type":"TrainInfo","travelDate":"2023-03-31T22:00:00.000Z","minCount":"0","maxCount":"9999999","trainId":trainid here}

@JsonSerializable()
class Train {
  String? name;
  String? seatReservationCode;
  String code;
  int? startStationReservationCode;
  int? endStationReservationCode;
  Station? startStation;
  Station? endStation;
  DateTime? startDate;
  Station? origStartStation;
  Station? origEndStation;
  DateTime? start;
  bool virtualStart;
  DateTime? arrive;
  bool virtualArrive;
  dynamic distance; // TODO: make this not dynamic
  bool closedTrackWay;
  String fullName;
  String fullNameAndType;
  List<TrainKind> kinds;
  List<TrainKind> kindsToDisplay;
  TrainKind kind;
  List<TrainService> services;
  dynamic actualOrEstimatedStart; // TODO: make this not dynamic
  dynamic actualOrEstimatedArrive; // TODO: make this not dynamic
  DelayInfo delayInfo;
  dynamic directTrains; // TODO: make this not dynamic
  dynamic carrierTrains; // TODO: make this not dynamic
  String? startTrack;
  String? startTrackType;
  String? endTrack;
  String? endTrackType;
  double jeEszkozAlapId;
  String fullType;
  String fullShortType;
  String? footer;
  Map viszonylatObject; // not implementing this shit fuck off ok maybe I will
  String? description;
  bool sameCar;
  dynamic startTimeZone; // TODO: make this not dynamic
  dynamic arriveTimeZone; // TODO: make this not dynamic
  String trainId;

  Train({
    this.name,
    required this.seatReservationCode,
    required this.code,
    this.startStationReservationCode,
    this.endStationReservationCode,
    this.startStation,
    this.endStation,
    this.startDate,
    this.origEndStation,
    this.origStartStation,
    required this.start,
    required this.virtualStart,
    required this.arrive,
    required this.virtualArrive,
    this.distance,
    required this.closedTrackWay,
    required this.fullName,
    required this.fullNameAndType,
    required this.kinds,
    required this.kindsToDisplay,
    required this.kind,
    required this.services,
    this.actualOrEstimatedArrive,
    this.actualOrEstimatedStart,
    required this.delayInfo,
    this.directTrains,
    this.carrierTrains,
    this.startTrack,
    this.startTrackType,
    this.endTrack,
    this.endTrackType,
    required this.jeEszkozAlapId,
    required this.fullShortType,
    required this.fullType,
    this.footer,
    required this.viszonylatObject,
    this.description,
    required this.sameCar,
    this.startTimeZone,
    this.arriveTimeZone,
    required this.trainId,
  });

  factory Train.fromJson(Map<String, dynamic> json) => _$TrainFromJson(json);
  Map<String, dynamic> toJson() => _$TrainToJson(this);
}
