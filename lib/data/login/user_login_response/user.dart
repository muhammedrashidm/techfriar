import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? uuid;
  String? name;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'nick_name')
  String? nickName;
  String? phone;
  @JsonKey(name: 'country_code')
  String? countryCode;
  @JsonKey(name: 'country_unicode')
  String? countryUnicode;
  @JsonKey(name: 'dial_code')
  String? dialCode;
  String? email;
  @JsonKey(name: 'profile_photo')
  String? profilePhoto;
  dynamic address;
  dynamic street;
  dynamic city;
  dynamic state;
  dynamic zip;
  @JsonKey(name: 'user_opinions')
  dynamic userOpinions;
  @JsonKey(name: 'phone_verified_at')
  String? phoneVerifiedAt;
  @JsonKey(name: 'email_verified_at')
  dynamic emailVerifiedAt;
  @JsonKey(name: 'name_as_per_pan')
  String? nameAsPerPan;
  @JsonKey(name: 'pan_number')
  String? panNumber;
  @JsonKey(name: 'aadhar_number')
  String? aadharNumber;
  @JsonKey(name: 'date_of_birth')
  String? dateOfBirth;
  String? nationality;
  @JsonKey(name: 'user_balance')
  int? userBalance;
  @JsonKey(name: 'tier_id')
  int? tierId;
  @JsonKey(name: 'set_interest')
  int? setInterest;
  @JsonKey(name: 'is_name_updated')
  int? isNameUpdated;
  @JsonKey(name: 'is_roi_viewed')
  int? isRoiViewed;
  List<dynamic>? document;
  @JsonKey(name: 'is_online')
  bool? isOnline;

  User({
    this.id,
    this.uuid,
    this.name,
    this.firstName,
    this.lastName,
    this.nickName,
    this.phone,
    this.countryCode,
    this.countryUnicode,
    this.dialCode,
    this.email,
    this.profilePhoto,
    this.address,
    this.street,
    this.city,
    this.state,
    this.zip,
    this.userOpinions,
    this.phoneVerifiedAt,
    this.emailVerifiedAt,
    this.nameAsPerPan,
    this.panNumber,
    this.aadharNumber,
    this.dateOfBirth,
    this.nationality,
    this.userBalance,
    this.tierId,
    this.setInterest,
    this.isNameUpdated,
    this.isRoiViewed,
    this.document,
    this.isOnline,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
