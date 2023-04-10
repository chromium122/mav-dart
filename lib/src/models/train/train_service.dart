import 'package:json_annotation/json_annotation.dart';
part 'train_service.g.dart';

@JsonSerializable()
class TrainService {
// apparently all of these can be null, found out the hard way
  String? listOrder;
  String? description;
  String? restrictiveStartStationCode;
  String? restrictiveEndStationCode;
  Map? sign;
  String? trainStopKind;

  TrainService({
    required this.listOrder,
    required this.description,
    this.restrictiveEndStationCode,
    this.restrictiveStartStationCode,
    this.sign,
    this.trainStopKind,
  });

  factory TrainService.fromJson(Map<String, dynamic> json) =>
      _$TrainServiceFromJson(json);
  Map<String, dynamic> toJson() => _$TrainServiceToJson(this);
}
