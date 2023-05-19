class TrendingQuestionResponseModal {
  final bool status;
  final String message;
  final List<QuestionModal> questions;
  final PaginationModal? pagination;

  TrendingQuestionResponseModal({
    required this.status,
    required this.message,
    required this.questions,
    this.pagination,
  });

  TrendingQuestionResponseModal copyWith({
    bool? status,
    String? message,
    List<QuestionModal>? questions,
    PaginationModal? pagination,
  }) =>
      TrendingQuestionResponseModal(
        status: status ?? this.status,
        message: message ?? this.message,
        questions: questions ?? this.questions,
        pagination: pagination ?? this.pagination,
      );
}

class PaginationModal {
  final int total;
  final int perPage;
  final int currentPage;
  final String nextUrl;

  PaginationModal({
    required this.total,
    required this.perPage,
    required this.currentPage,
    required this.nextUrl,
  });

  PaginationModal copyWith({
    int? total,
    int? perPage,
    int? currentPage,
    String? nextUrl,
  }) =>
      PaginationModal(
        total: total ?? this.total,
        perPage: perPage ?? this.perPage,
        currentPage: currentPage ?? this.currentPage,
        nextUrl: nextUrl ?? this.nextUrl,
      );
}

class QuestionModal {
  final int id;
  final String statement;
  final String? description;
  final DateTime? startOn;
  final DateTime endOn;
  final DateTime? publishOn;
  final dynamic resultPublishedOn;
  final String? bannerImage;
  final String? thumbnailImage;
  final List<PredictionModal>? predictions;
  final List<CategoryQuestionModal>? categoryQuestions;
  final List<EventQuestionModal>? eventQuestions;
  final bool? isSponsored;
  final List<dynamic>? sponsoredQuestions;
  final String? sourceOfTruth;
  final String? sourceOfTruthLink;
  final int poolSize;
  final List<OptionModal>? options;

  QuestionModal({
    required this.id,
    required this.statement,
    this.description,
    this.startOn,
    required this.endOn,
    this.publishOn,
    this.resultPublishedOn,
    this.bannerImage,
    this.thumbnailImage,
    this.predictions,
    this.categoryQuestions,
    this.eventQuestions,
    this.isSponsored,
    this.sponsoredQuestions,
    this.sourceOfTruth,
    this.sourceOfTruthLink,
    required this.poolSize,
    this.options,
  });

  QuestionModal copyWith({
    int? id,
    String? statement,
    String? description,
    DateTime? startOn,
    DateTime? endOn,
    DateTime? publishOn,
    dynamic resultPublishedOn,
    String? bannerImage,
    String? thumbnailImage,
    List<PredictionModal>? predictions,
    List<CategoryQuestionModal>? categoryQuestions,
    List<EventQuestionModal>? eventQuestions,
    bool? isSponsored,
    List<dynamic>? sponsoredQuestions,
    String? sourceOfTruth,
    String? sourceOfTruthLink,
    int? poolSize,
    List<OptionModal>? options,
  }) =>
      QuestionModal(
        id: id ?? this.id,
        statement: statement ?? this.statement,
        description: description ?? this.description,
        startOn: startOn ?? this.startOn,
        endOn: endOn ?? this.endOn,
        publishOn: publishOn ?? this.publishOn,
        resultPublishedOn: resultPublishedOn ?? this.resultPublishedOn,
        bannerImage: bannerImage ?? this.bannerImage,
        thumbnailImage: thumbnailImage ?? this.thumbnailImage,
        predictions: predictions ?? this.predictions,
        categoryQuestions: categoryQuestions ?? this.categoryQuestions,
        eventQuestions: eventQuestions ?? this.eventQuestions,
        isSponsored: isSponsored ?? this.isSponsored,
        sponsoredQuestions: sponsoredQuestions ?? this.sponsoredQuestions,
        sourceOfTruth: sourceOfTruth ?? this.sourceOfTruth,
        sourceOfTruthLink: sourceOfTruthLink ?? this.sourceOfTruthLink,
        poolSize: poolSize ?? this.poolSize,
        options: options ?? this.options,
      );
}

class CategoryQuestionModal {
  final int id;
  final int categoryId;
  final int questionId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int visibility;

  CategoryQuestionModal({
    required this.id,
    required this.categoryId,
    required this.questionId,
    required this.createdAt,
    required this.updatedAt,
    required this.visibility,
  });

  CategoryQuestionModal copyWith({
    int? id,
    int? categoryId,
    int? questionId,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? visibility,
  }) =>
      CategoryQuestionModal(
        id: id ?? this.id,
        categoryId: categoryId ?? this.categoryId,
        questionId: questionId ?? this.questionId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        visibility: visibility ?? this.visibility,
      );
}

class EventQuestionModal {
  final int id;
  final int eventId;
  final int questionId;
  final DateTime createdAt;
  final DateTime updatedAt;

  EventQuestionModal({
    required this.id,
    required this.eventId,
    required this.questionId,
    required this.createdAt,
    required this.updatedAt,
  });

  EventQuestionModal copyWith({
    int? id,
    int? eventId,
    int? questionId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      EventQuestionModal(
        id: id ?? this.id,
        eventId: eventId ?? this.eventId,
        questionId: questionId ?? this.questionId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
}

class OptionModal {
  final int id;
  final String title;
  final int priority;
  final int investment;
  final int questionId;

  OptionModal({
    required this.id,
    required this.title,
    required this.priority,
    required this.investment,
    required this.questionId,
  });

  OptionModal copyWith({
    int? id,
    String? title,
    int? priority,
    int? investment,
    int? questionId,
  }) =>
      OptionModal(
        id: id ?? this.id,
        title: title ?? this.title,
        priority: priority ?? this.priority,
        investment: investment ?? this.investment,
        questionId: questionId ?? this.questionId,
      );
}

class PredictionModal {
  final int id;
  final int userId;
  final int questionId;
  final String optionId;
  final int amount;
  final DateTime dateTime;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic isWin;
  final int walletTransactionId;
  final int poolWalletId;

  PredictionModal({
    required this.id,
    required this.userId,
    required this.questionId,
    required this.optionId,
    required this.amount,
    required this.dateTime,
    required this.createdAt,
    required this.updatedAt,
    required this.isWin,
    required this.walletTransactionId,
    required this.poolWalletId,
  });

  PredictionModal copyWith({
    int? id,
    int? userId,
    int? questionId,
    String? optionId,
    int? amount,
    DateTime? dateTime,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic isWin,
    int? walletTransactionId,
    int? poolWalletId,
  }) =>
      PredictionModal(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        questionId: questionId ?? this.questionId,
        optionId: optionId ?? this.optionId,
        amount: amount ?? this.amount,
        dateTime: dateTime ?? this.dateTime,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isWin: isWin ?? this.isWin,
        walletTransactionId: walletTransactionId ?? this.walletTransactionId,
        poolWalletId: poolWalletId ?? this.poolWalletId,
      );
}
