import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

@JsonSerializable()
class Pagination {
  int? total;
  @JsonKey(name: 'per_page')
  int? perPage;
  @JsonKey(name: 'current_page')
  int? currentPage;
  @JsonKey(name: 'next_url')
  String? nextUrl;

  Pagination({this.total, this.perPage, this.currentPage, this.nextUrl});

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return _$PaginationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
