// Noun. Havarie f (genitive Havarie, plural Havarien) accident, emergency (most often of a ship); shipwreck.
import 'package:json_annotation/json_annotation.dart';
part 'delay_info.g.dart';

@JsonSerializable()
class DelayInfo {
  double? currentDelay;
  String? delayReason;
  List<dynamic>? delayReasons; // idk what kind of list this is
  String? businessInfo;
  String? delayInfo; // seems to be an empty string instead of null (when null)

  DelayInfo({
    this.currentDelay,
    this.delayReason,
    this.delayReasons,
    this.businessInfo,
    this.delayInfo,
  });

  factory DelayInfo.fromJson(Map<String, dynamic> json) =>
      _$DelayInfoFromJson(json);
  Map<String, dynamic> toJson() => _$DelayInfoToJson(this);
}
