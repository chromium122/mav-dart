import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  String? password;
  String? oldPassword;
  @JsonKey(name: 'titulus')
  String? title;
  @JsonKey(name: 'keresztNev')
  String? firstName;
  @JsonKey(name: 'vezetekNev')
  String? lastName;
  @JsonKey(name: 'telefonSzam')
  String? phoneNumber; // maybe possible to change this from the app, idk
  @JsonKey(name: 'regisztraciosAzonosito')
  String registrationId;
  @JsonKey(name: 'adatvedelmiNyilatkozat')
  bool privacyPolicy;
  @JsonKey(name: 'jelszoCsereSzukseges')
  bool passwordChangeRequired;
  @JsonKey(name: 'jelszoCsereOka')
  String? passwordChangeReason;
  dynamic szamlazasiAdat; // most likely unused
  String? userTokenXml;
  @JsonKey(name: 'jelszoCsereToken')
  String? passwordChangeToken;
  bool isBetaRegistration;
  String userEmail;

  User({
    this.password,
    this.oldPassword,
    this.title,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    required this.registrationId,
    required this.privacyPolicy,
    required this.passwordChangeRequired,
    this.passwordChangeReason,
    this.szamlazasiAdat,
    this.userTokenXml,
    this.passwordChangeToken,
    required this.isBetaRegistration,
    required this.userEmail,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
