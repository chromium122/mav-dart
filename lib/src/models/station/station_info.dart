import 'station.dart';
import '../train/train.dart';

import 'package:json_annotation/json_annotation.dart';
part 'station_info.g.dart';

@JsonSerializable()
class StationInfo {
  Station station;
  List<Train> arrivalScheduler;
  List<Train> departureScheduler;

  StationInfo({
    required this.station,
    required this.arrivalScheduler,
    required this.departureScheduler,
  });

  factory StationInfo.fromJson(Map<String, dynamic> json) =>
      _$StationInfoFromJson(json);
  Map<String, dynamic> toJson() => _$StationInfoToJson(this);
}
