// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      total: json['total'] as int?,
      perPage: json['per_page'] as int?,
      currentPage: json['current_page'] as int?,
      nextUrl: json['next_url'] as String?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'next_url': instance.nextUrl,
    };
