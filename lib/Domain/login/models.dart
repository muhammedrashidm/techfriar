class LoginResponseModal {
  final bool status;
  final String message;
  final DataModal data;

  LoginResponseModal({
    required this.status,
    required this.message,
    required this.data,
  });

  LoginResponseModal copyWith({
    bool? status,
    String? message,
    DataModal? data,
  }) =>
      LoginResponseModal(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
      );
}

class DataModal {
  final UserModal user;
  final String token;

  DataModal({
    required this.user,
    required this.token,
  });

  factory DataModal.empty() {
    return DataModal(user: UserModal.empty(), token: '');
  }
  DataModal copyWith({
    UserModal? user,
    String? token,
  }) =>
      DataModal(
        user: user ?? this.user,
        token: token ?? this.token,
      );
}

class UserModal {
  final int id;
  final String uuid;
  final String name;
  final String firstName;
  final String lastName;
  final String nickName;
  final String phone;
  final String countryCode;
  final String countryUnicode;
  final String dialCode;
  final String email;
  final String profilePhoto;
  final dynamic address;
  final dynamic street;
  final dynamic city;
  final dynamic state;
  final dynamic zip;
  final dynamic userOpinions;
  final DateTime phoneVerifiedAt;
  final dynamic emailVerifiedAt;
  final String nameAsPerPan;
  final String panNumber;
  final String aadharNumber;
  final String dateOfBirth;
  final String nationality;
  final int userBalance;
  final int tierId;
  final int setInterest;
  final int isNameUpdated;
  final int isRoiViewed;
  final List<dynamic> document;
  final bool isOnline;

  UserModal({
    required this.id,
    required this.uuid,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.nickName,
    required this.phone,
    required this.countryCode,
    required this.countryUnicode,
    required this.dialCode,
    required this.email,
    required this.profilePhoto,
    required this.address,
    required this.street,
    required this.city,
    required this.state,
    required this.zip,
    required this.userOpinions,
    required this.phoneVerifiedAt,
    required this.emailVerifiedAt,
    required this.nameAsPerPan,
    required this.panNumber,
    required this.aadharNumber,
    required this.dateOfBirth,
    required this.nationality,
    required this.userBalance,
    required this.tierId,
    required this.setInterest,
    required this.isNameUpdated,
    required this.isRoiViewed,
    required this.document,
    required this.isOnline,
  });

  factory UserModal.empty() {
    return UserModal(
        id: 0,
        uuid: '',
        name: '',
        firstName: '',
        lastName: '',
        nickName: '',
        phone: '',
        countryCode: '',
        countryUnicode: '',
        dialCode: '',
        email: '',
        profilePhoto: '',
        address: '',
        street: '',
        city: '',
        state: '',
        zip: '',
        userOpinions: '',
        phoneVerifiedAt: DateTime.now(),
        emailVerifiedAt: '',
        nameAsPerPan: '',
        panNumber: '',
        aadharNumber: '',
        dateOfBirth: '',
        nationality: '',
        userBalance: 0,
        tierId: 0,
        setInterest: 0,
        isNameUpdated: 0,
        isRoiViewed: 0,
        document: [],
        isOnline: false);
  }

  UserModal copyWith({
    int? id,
    String? uuid,
    String? name,
    String? firstName,
    String? lastName,
    String? nickName,
    String? phone,
    String? countryCode,
    String? countryUnicode,
    String? dialCode,
    String? email,
    String? profilePhoto,
    dynamic address,
    dynamic street,
    dynamic city,
    dynamic state,
    dynamic zip,
    dynamic userOpinions,
    DateTime? phoneVerifiedAt,
    dynamic emailVerifiedAt,
    String? nameAsPerPan,
    String? panNumber,
    String? aadharNumber,
    String? dateOfBirth,
    String? nationality,
    int? userBalance,
    int? tierId,
    int? setInterest,
    int? isNameUpdated,
    int? isRoiViewed,
    List<dynamic>? document,
    bool? isOnline,
  }) =>
      UserModal(
        id: id ?? this.id,
        uuid: uuid ?? this.uuid,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        nickName: nickName ?? this.nickName,
        phone: phone ?? this.phone,
        countryCode: countryCode ?? this.countryCode,
        countryUnicode: countryUnicode ?? this.countryUnicode,
        dialCode: dialCode ?? this.dialCode,
        email: email ?? this.email,
        profilePhoto: profilePhoto ?? this.profilePhoto,
        address: address ?? this.address,
        street: street ?? this.street,
        city: city ?? this.city,
        state: state ?? this.state,
        zip: zip ?? this.zip,
        userOpinions: userOpinions ?? this.userOpinions,
        phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
        emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
        nameAsPerPan: nameAsPerPan ?? this.nameAsPerPan,
        panNumber: panNumber ?? this.panNumber,
        aadharNumber: aadharNumber ?? this.aadharNumber,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        nationality: nationality ?? this.nationality,
        userBalance: userBalance ?? this.userBalance,
        tierId: tierId ?? this.tierId,
        setInterest: setInterest ?? this.setInterest,
        isNameUpdated: isNameUpdated ?? this.isNameUpdated,
        isRoiViewed: isRoiViewed ?? this.isRoiViewed,
        document: document ?? this.document,
        isOnline: isOnline ?? this.isOnline,
      );
}
