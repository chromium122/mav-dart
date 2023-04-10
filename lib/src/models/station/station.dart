import 'package:json_annotation/json_annotation.dart';
part 'station.g.dart';

@JsonSerializable()
class Station {
  String name;
  int id;
  bool isAlias;
  String code;
  String? baseCode;
  bool? isInternational;
  bool? canUseForOfferRequest;
  @JsonKey(name: 'canUseForPessengerInformation')
  bool? canUseForPassangerInformation;
  String? country;
  String? countryISO;

  Station({
    required this.name,
    required this.id,
    required this.isAlias,
    required this.code,
    this.baseCode,
    this.isInternational,
    this.canUseForOfferRequest,
    this.canUseForPassangerInformation,
    this.country,
    this.countryISO,
  });

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
  Map<String, dynamic> toJson() => _$StationToJson(this);
}
