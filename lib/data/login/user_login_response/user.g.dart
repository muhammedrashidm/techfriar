// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      nickName: json['nick_name'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['country_code'] as String?,
      countryUnicode: json['country_unicode'] as String?,
      dialCode: json['dial_code'] as String?,
      email: json['email'] as String?,
      profilePhoto: json['profile_photo'] as String?,
      address: json['address'],
      street: json['street'],
      city: json['city'],
      state: json['state'],
      zip: json['zip'],
      userOpinions: json['user_opinions'],
      phoneVerifiedAt: json['phone_verified_at'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      nameAsPerPan: json['name_as_per_pan'] as String?,
      panNumber: json['pan_number'] as String?,
      aadharNumber: json['aadhar_number'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      nationality: json['nationality'] as String?,
      userBalance: json['user_balance'] as int?,
      tierId: json['tier_id'] as int?,
      setInterest: json['set_interest'] as int?,
      isNameUpdated: json['is_name_updated'] as int?,
      isRoiViewed: json['is_roi_viewed'] as int?,
      document: json['document'] as List<dynamic>?,
      isOnline: json['is_online'] as bool?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'nick_name': instance.nickName,
      'phone': instance.phone,
      'country_code': instance.countryCode,
      'country_unicode': instance.countryUnicode,
      'dial_code': instance.dialCode,
      'email': instance.email,
      'profile_photo': instance.profilePhoto,
      'address': instance.address,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'user_opinions': instance.userOpinions,
      'phone_verified_at': instance.phoneVerifiedAt,
      'email_verified_at': instance.emailVerifiedAt,
      'name_as_per_pan': instance.nameAsPerPan,
      'pan_number': instance.panNumber,
      'aadhar_number': instance.aadharNumber,
      'date_of_birth': instance.dateOfBirth,
      'nationality': instance.nationality,
      'user_balance': instance.userBalance,
      'tier_id': instance.tierId,
      'set_interest': instance.setInterest,
      'is_name_updated': instance.isNameUpdated,
      'is_roi_viewed': instance.isRoiViewed,
      'document': instance.document,
      'is_online': instance.isOnline,
    };