import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  LoginResponseData data;
  @JsonKey(name: "status")
  bool status;
  @JsonKey(name: "code")
  int code;

  LoginResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class LoginResponseData {
  @JsonKey(name: "token")
  String token;
  @JsonKey(name: "username")
  String username;

  LoginResponseData({
    required this.token,
    required this.username,
  });

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);
}
