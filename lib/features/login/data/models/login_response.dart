import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(name: 'data')
  Data? userData;
  bool? isSuccess;
  bool? showMessage;


  LoginResponse({this.message, this.userData, this.isSuccess, this.showMessage});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}




@JsonSerializable()
class Data {
  String? token;
  @JsonKey(name: 'expires_in')
  int? expiresIn;
  User? user;

  Data({this.token, this.expiresIn, this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  int? id;
  @JsonKey(name: 'sa_id')
  String? saId;
  String? name;
  String? qrcode;
  String? email;
  String? image;

  Job? job;
  Permissions? permissions;
  Catering? catering;

  String? currentShift;
  String? location;

  AdditionalInfo? additionalInfo;
  List<String>? removeReasons;
  Other? other;

  User({
    this.id,
    this.saId,
    this.name,
    this.qrcode,
    this.email,
    this.image,
    this.job,
    this.permissions,
    this.catering,
    this.currentShift,
    this.location,
    this.additionalInfo,
    this.removeReasons,
    this.other,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}



@JsonSerializable()
class Job {
  int? id;
  String? name;

  Job({this.id, this.name});

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
  Map<String, dynamic> toJson() => _$JobToJson(this);
}


@JsonSerializable()
class Permissions {
  String? type;
  bool? showAttendance;
  bool? showAuditing;

  Permissions({this.type, this.showAttendance, this.showAuditing});

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);
  Map<String, dynamic> toJson() => _$PermissionsToJson(this);
}

@JsonSerializable()
class Catering {
  int? id;
  bool? showBtn;
  bool? showNote;
  bool? isChecked;
  String? note;

  Catering({this.id, this.showBtn, this.showNote, this.isChecked, this.note});

  factory Catering.fromJson(Map<String, dynamic> json) =>
      _$CateringFromJson(json);
  Map<String, dynamic> toJson() => _$CateringToJson(this);
}

@JsonSerializable()
class AdditionalInfo {
  @JsonKey(name: 'job_name')
  String? jobName;
  String? name;
  String? phone;
  @JsonKey(name: 'sa_id')
  String? saId;
  String? nationality;
  String? languages;
  @JsonKey(name: 'blood_type')
  String? bloodType;
  bool? showFooter;

  AdditionalInfo({
    this.jobName,
    this.name,
    this.phone,
    this.saId,
    this.nationality,
    this.languages,
    this.bloodType,
    this.showFooter,
  });

  factory AdditionalInfo.fromJson(Map<String, dynamic> json) =>
      _$AdditionalInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AdditionalInfoToJson(this);
}

@JsonSerializable()
class Other {
  AuditingConfirmation? auditingConfirmation;
  Support? support;
  LastUpdate? lastUpdate;

  Other({this.auditingConfirmation, this.support, this.lastUpdate});

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
  Map<String, dynamic> toJson() => _$OtherToJson(this);
}

@JsonSerializable()
class AuditingConfirmation {
  bool? show;

  AuditingConfirmation({this.show});

  factory AuditingConfirmation.fromJson(Map<String, dynamic> json) =>
      _$AuditingConfirmationFromJson(json);
  Map<String, dynamic> toJson() => _$AuditingConfirmationToJson(this);
}

@JsonSerializable()
class Support {
  bool? show;
  String? number;

  Support({this.show, this.number});

  factory Support.fromJson(Map<String, dynamic> json) =>
      _$SupportFromJson(json);
  Map<String, dynamic> toJson() => _$SupportToJson(this);
}

@JsonSerializable()
class LastUpdate {
  @JsonKey(name: 'ios_date')
  String? iosDate;
  @JsonKey(name: 'ios_version')
  int? iosVersion;
  @JsonKey(name: 'android_version')
  int? androidVersion;

  LastUpdate({this.iosDate, this.iosVersion, this.androidVersion});

  factory LastUpdate.fromJson(Map<String, dynamic> json) =>
      _$LastUpdateFromJson(json);
  Map<String, dynamic> toJson() => _$LastUpdateToJson(this);
}
