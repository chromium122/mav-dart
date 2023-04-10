import '../station/station.dart';

import 'package:json_annotation/json_annotation.dart';
part 'train_kind.g.dart';

@JsonSerializable()
class TrainKind {
  String name;
  @JsonKey(name: 'sortName')
  String? shortName;
  String code;
  int priority;
  String? backgroundColor; // wtf
  String? foregroundColor;
  Map? sign; // do whatever you want with this
  Station startStation;
  Station endStation;

  TrainKind({
    required this.name,
    this.shortName,
    required this.code,
    required this.priority,
    this.backgroundColor,
    this.foregroundColor,
    this.sign,
    required this.startStation,
    required this.endStation,
  });

  factory TrainKind.fromJson(Map<String, dynamic> json) =>
      _$TrainKindFromJson(json);
  Map<String, dynamic> toJson() => _$TrainKindToJson(this);
}
