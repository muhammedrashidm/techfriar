import 'package:techfriar/Domain/login/models.dart';
import 'package:techfriar/Domain/trending/modals.dart';
import 'package:techfriar/data/login/user_login_response/data.dart';
import 'package:techfriar/data/login/user_login_response/user.dart';
import 'package:techfriar/data/login/user_login_response/user_login_response.dart';

import '../trending/trending_questions_response/category_question.dart';
import '../trending/trending_questions_response/event_question.dart';
import '../trending/trending_questions_response/option.dart';
import '../trending/trending_questions_response/pagination.dart';
import '../trending/trending_questions_response/prediction.dart';
import '../trending/trending_questions_response/question.dart';
import '../trending/trending_questions_response/trending_questions_response.dart';

extension LoginResponseModalFromResponse on UserLoginResponse? {
  LoginResponseModal toDomain() {
    return LoginResponseModal(
        status: this?.status ?? false,
        message: this?.message ?? '',
        data: this?.data.toDomain() ?? DataModal.empty());
  }
}

extension DataModalFromResponse on Data? {
  DataModal toDomain() {
    return DataModal(
        user: this?.user.toDomain() ?? UserModal.empty(),
        token: this?.token ?? '');
  }
}

extension UserModalFromResponse on User? {
  UserModal toDomain() {
    return UserModal(
        id: this?.id ?? 0,
        uuid: this?.uuid ?? '',
        name: this?.name ?? '',
        firstName: this?.firstName ?? '',
        lastName: this?.lastName ?? '',
        nickName: this?.nickName ?? '',
        phone: this?.phone ?? '',
        countryCode: this?.countryCode ?? '',
        countryUnicode: this?.countryUnicode ?? '',
        dialCode: this?.dialCode ?? '',
        email: this?.email ?? '',
        profilePhoto: this?.profilePhoto ?? '',
        address: this?.address ?? '',
        street: this?.street,
        city: this?.city,
        state: this?.state,
        zip: this?.zip,
        userOpinions: this?.userOpinions,
        phoneVerifiedAt:
            DateTime.tryParse(this?.phoneVerifiedAt ?? '') ?? DateTime.now(),
        emailVerifiedAt: this?.emailVerifiedAt ?? '',
        nameAsPerPan: this?.nameAsPerPan ?? '',
        panNumber: this?.panNumber ?? '',
        aadharNumber: this?.aadharNumber ?? '',
        dateOfBirth: this?.dateOfBirth ?? '',
        nationality: this?.nationality ?? '',
        userBalance: this?.userBalance ?? 0,
        tierId: this?.tierId ?? 0,
        setInterest: this?.setInterest ?? 0,
        isNameUpdated: this?.isNameUpdated ?? 0,
        isRoiViewed: this?.isRoiViewed ?? 0,
        document: this?.document ?? [],
        isOnline: this?.isOnline ?? false);
  }
}

//// Trending questions responses

extension TrendingQuestionResponseModalFromResponse
    on TrendingQuestionsResponse? {
  TrendingQuestionResponseModal toDomain() {
    return TrendingQuestionResponseModal(
      status: this?.status ?? false,
      message: this?.message ?? '',
      questions: this?.questions?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}

extension QuestionFromResponse on Question? {
  QuestionModal toDomain() {
    return QuestionModal(
      id: this?.id ?? 0,
      statement: this?.statement ?? '',
      endOn: DateTime.tryParse(this?.endOn ?? '') ?? DateTime.now(),
      poolSize: this?.poolSize ?? 0,
    );
  }
}

extension PaginationFromResponse on Pagination? {}

extension CategoryQuestionFromResponse on CategoryQuestion? {}

extension EventQuestionFromResponse on EventQuestion? {}

extension OptionFromResponse on Option? {}

extension PredictionFromResponse on Prediction? {}
