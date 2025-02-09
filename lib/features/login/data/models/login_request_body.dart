
import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody{
  final int saID;
  final int password;

  LoginRequestBody({required this.saID, required this.password});

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}