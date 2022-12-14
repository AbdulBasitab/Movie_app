import 'package:json_annotation/json_annotation.dart';
import 'tv_genre.dart';

part 'populartv_detail.g.dart';

@JsonSerializable()
class PopularTvDetailModel {
  @JsonKey(name: 'backdrop_path')
  final String? tvBackdrop;

  @JsonKey(name: 'name')
  final String? tvTitle;

  @JsonKey(name: 'id')
  final int? tvId;

  @JsonKey(name: 'overview')
  final String? tvDescription;

  @JsonKey(name: 'number_of_seasons')
  final int? seasons;

  @JsonKey(name: 'number_of_episodes')
  final int? episodes;

  @JsonKey(name: 'first_air_date')
  final String? firstairDate;

  @JsonKey(name: 'last_air_date')
  final String? lastairDate;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'vote_average')
  final num? rating;

  @JsonKey(name: 'genres')
  final List<TvGenre>? genres;

  PopularTvDetailModel({
    required this.tvBackdrop,
    required this.tvTitle,
    required this.tvId,
    required this.tvDescription,
    required this.seasons,
    required this.episodes,
    required this.firstairDate,
    required this.lastairDate,
    required this.status,
    required this.rating,
    required this.genres,
  });

  factory PopularTvDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PopularTvDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$PopularTvDetailModelToJson(this);
}
