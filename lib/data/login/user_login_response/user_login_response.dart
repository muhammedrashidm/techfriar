import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'user_login_response.g.dart';

@JsonSerializable()
class UserLoginResponse {
  bool? status;
  String? message;
  Data? data;

  UserLoginResponse({this.status, this.message, this.data});

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) {
    return _$UserLoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserLoginResponseToJson(this);
}
