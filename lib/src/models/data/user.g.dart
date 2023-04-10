// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      password: json['password'] as String?,
      oldPassword: json['oldPassword'] as String?,
      title: json['titulus'] as String?,
      firstName: json['keresztNev'] as String?,
      lastName: json['vezetekNev'] as String?,
      phoneNumber: json['telefonSzam'] as String?,
      registrationId: json['regisztraciosAzonosito'] as String,
      privacyPolicy: json['adatvedelmiNyilatkozat'] as bool,
      passwordChangeRequired: json['jelszoCsereSzukseges'] as bool,
      passwordChangeReason: json['jelszoCsereOka'] as String?,
      szamlazasiAdat: json['szamlazasiAdat'],
      userTokenXml: json['userTokenXml'] as String?,
      passwordChangeToken: json['jelszoCsereToken'] as String?,
      isBetaRegistration: json['isBetaRegistration'] as bool,
      userEmail: json['userEmail'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'password': instance.password,
      'oldPassword': instance.oldPassword,
      'titulus': instance.title,
      'keresztNev': instance.firstName,
      'vezetekNev': instance.lastName,
      'telefonSzam': instance.phoneNumber,
      'regisztraciosAzonosito': instance.registrationId,
      'adatvedelmiNyilatkozat': instance.privacyPolicy,
      'jelszoCsereSzukseges': instance.passwordChangeRequired,
      'jelszoCsereOka': instance.passwordChangeReason,
      'szamlazasiAdat': instance.szamlazasiAdat,
      'userTokenXml': instance.userTokenXml,
      'jelszoCsereToken': instance.passwordChangeToken,
      'isBetaRegistration': instance.isBetaRegistration,
      'userEmail': instance.userEmail,
    };
