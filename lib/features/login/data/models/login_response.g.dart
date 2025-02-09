// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String?,
      userData: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      showMessage: json['showMessage'] as bool?,
    );

// ignore: unused_element
Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'isSuccess': instance.isSuccess,
      'showMessage': instance.showMessage,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      expiresIn: json['expires_in'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'token': instance.token,
      'expires_in': instance.expiresIn,
      'user': instance.user?.toJson(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      saId: json['sa_id'] as String?,
      name: json['name'] as String?,
      qrcode: json['qrcode'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      job: json['job'] == null
          ? null
          : Job.fromJson(json['job'] as Map<String, dynamic>),
      permissions: json['permissions'] == null
          ? null
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      catering: json['catering'] == null
          ? null
          : Catering.fromJson(json['catering'] as Map<String, dynamic>),
      currentShift: json['currentShift'] as String?,
      location: json['location'] as String?,
      additionalInfo: json['additionalInfo'] == null
          ? null
          : AdditionalInfo.fromJson(
              json['additionalInfo'] as Map<String, dynamic>),
      removeReasons: (json['removeReasons'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      other: json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'sa_id': instance.saId,
      'name': instance.name,
      'qrcode': instance.qrcode,
      'email': instance.email,
      'image': instance.image,
      'job': instance.job,
      'permissions': instance.permissions,
      'catering': instance.catering,
      'currentShift': instance.currentShift,
      'location': instance.location,
      'additionalInfo': instance.additionalInfo,
      'removeReasons': instance.removeReasons,
      'other': instance.other,
    };

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Permissions _$PermissionsFromJson(Map<String, dynamic> json) => Permissions(
      type: json['type'] as String?,
      showAttendance: json['showAttendance'] as bool?,
      showAuditing: json['showAuditing'] as bool?,
    );

Map<String, dynamic> _$PermissionsToJson(Permissions instance) =>
    <String, dynamic>{
      'type': instance.type,
      'showAttendance': instance.showAttendance,
      'showAuditing': instance.showAuditing,
    };

Catering _$CateringFromJson(Map<String, dynamic> json) => Catering(
      id: json['id'] as int?,
      showBtn: json['showBtn'] as bool?,
      showNote: json['showNote'] as bool?,
      isChecked: json['isChecked'] as bool?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$CateringToJson(Catering instance) => <String, dynamic>{
      'id': instance.id,
      'showBtn': instance.showBtn,
      'showNote': instance.showNote,
      'isChecked': instance.isChecked,
      'note': instance.note,
    };

AdditionalInfo _$AdditionalInfoFromJson(Map<String, dynamic> json) =>
    AdditionalInfo(
      jobName: json['job_name'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      saId: json['sa_id'] as String?,
      nationality: json['nationality'] as String?,
      languages: json['languages'] as String?,
      bloodType: json['blood_type'] as String?,
      showFooter: json['showFooter'] as bool?,
    );

Map<String, dynamic> _$AdditionalInfoToJson(AdditionalInfo instance) =>
    <String, dynamic>{
      'job_name': instance.jobName,
      'name': instance.name,
      'phone': instance.phone,
      'sa_id': instance.saId,
      'nationality': instance.nationality,
      'languages': instance.languages,
      'blood_type': instance.bloodType,
      'showFooter': instance.showFooter,
    };

Other _$OtherFromJson(Map<String, dynamic> json) => Other(
      auditingConfirmation: json['auditing_confirmation'] == null
          ? null
          : AuditingConfirmation.fromJson(
              json['auditing_confirmation'] as Map<String, dynamic>),
      support: json['support'] == null
          ? null
          : Support.fromJson(json['support'] as Map<String, dynamic>),
      lastUpdate: json['last_update'] == null
          ? null
          : LastUpdate.fromJson(json['last_update'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtherToJson(Other instance) => <String, dynamic>{
      'auditing_confirmation': instance.auditingConfirmation?.toJson(),
      'support': instance.support?.toJson(),
      'last_update': instance.lastUpdate?.toJson(),
    };

AuditingConfirmation _$AuditingConfirmationFromJson(
        Map<String, dynamic> json) =>
    AuditingConfirmation(
      show: json['show'] as bool?,
    );

Map<String, dynamic> _$AuditingConfirmationToJson(
        AuditingConfirmation instance) =>
    <String, dynamic>{
      'show': instance.show,
    };

Support _$SupportFromJson(Map<String, dynamic> json) => Support(
      show: json['show'] as bool?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$SupportToJson(Support instance) => <String, dynamic>{
      'show': instance.show,
      'number': instance.number,
    };

LastUpdate _$LastUpdateFromJson(Map<String, dynamic> json) => LastUpdate(
      iosDate: json['ios_date'] as String?,
      iosVersion: json['ios_version'] as int?,
      androidVersion: json['android_version'] as int?,
    );

Map<String, dynamic> _$LastUpdateToJson(LastUpdate instance) =>
    <String, dynamic>{
      'ios_date': instance.iosDate,
      'ios_version': instance.iosVersion,
      'android_version': instance.androidVersion,
    };
