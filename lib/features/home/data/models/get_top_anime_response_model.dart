import 'package:json_annotation/json_annotation.dart';

part 'get_top_anime_response_model.g.dart';

@JsonSerializable()
class GetTopAnimeResponseModel {
  final Pagination pagination;
  final List<Anime> data;

  GetTopAnimeResponseModel({required this.pagination, required this.data});

  factory GetTopAnimeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetTopAnimeResponseModelFromJson(json);
}

@JsonSerializable()
class Pagination {
  @JsonKey(name: 'last_visible_page')
  final int lastVisiblePage;
  @JsonKey(name: 'has_next_page')
  final bool hasNextPage;
  @JsonKey(name: 'current_page')
  final int currentPage;
  final PaginationItems items;

  Pagination({
    required this.lastVisiblePage,
    required this.hasNextPage,
    required this.currentPage,
    required this.items,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class PaginationItems {
  final int count;
  final int total;
  @JsonKey(name: 'per_page')
  final int perPage;

  PaginationItems({
    required this.count,
    required this.total,
    required this.perPage,
  });

  factory PaginationItems.fromJson(Map<String, dynamic> json) =>
      _$PaginationItemsFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationItemsToJson(this);
}

@JsonSerializable()
class Anime {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String url;
  final Images images;
  final Trailer? trailer;
  final bool approved;
  final List<Title> titles;
  final String title;
  @JsonKey(name: 'title_english')
  final String? titleEnglish;
  @JsonKey(name: 'title_japanese')
  final String? titleJapanese;
  @JsonKey(name: 'title_synonyms')
  final List<String> titleSynonyms;
  final String? type;
  final String? source;
  final int? episodes;
  final String? status;
  final bool airing;
  final Aired aired;
  final String? duration;
  final String? rating;
  final double? score;
  @JsonKey(name: 'scored_by')
  final int? scoredBy;
  final int? rank;
  final int? popularity;
  final int? members;
  final int? favorites;
  final String? synopsis;
  final String? background;
  final String? season;
  final int? year;
  final Broadcast? broadcast;
  final List<Genre> producers;
  final List<Genre> licensors;
  final List<Genre> studios;
  final List<Genre> genres;
  @JsonKey(name: 'explicit_genres')
  final List<Genre> explicitGenres;
  final List<Genre> themes;
  final List<Genre> demographics;

  Anime({
    required this.malId,
    required this.url,
    required this.images,
    this.trailer,
    required this.approved,
    required this.titles,
    required this.title,
    this.titleEnglish,
    this.titleJapanese,
    required this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    required this.airing,
    required this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    required this.producers,
    required this.licensors,
    required this.studios,
    required this.genres,
    required this.explicitGenres,
    required this.themes,
    required this.demographics,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}

@JsonSerializable()
class Images {
  final ImageSet jpg;
  final ImageSet? webp;

  Images({required this.jpg, this.webp});

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class ImageSet {
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'small_image_url')
  final String? smallImageUrl;
  @JsonKey(name: 'large_image_url')
  final String? largeImageUrl;
  @JsonKey(name: 'medium_image_url')
  final String? mediumImageUrl;
  @JsonKey(name: 'maximum_image_url')
  final String? maximumImageUrl;

  ImageSet({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
    this.mediumImageUrl,
    this.maximumImageUrl,
  });

  factory ImageSet.fromJson(Map<String, dynamic> json) =>
      _$ImageSetFromJson(json);
  Map<String, dynamic> toJson() => _$ImageSetToJson(this);
}

@JsonSerializable()
class Trailer {
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  final String? url;
  @JsonKey(name: 'embed_url')
  final String? embedUrl;
  final ImageSet images;

  Trailer({this.youtubeId, this.url, this.embedUrl, required this.images});

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}

@JsonSerializable()
class Title {
  final String type;
  final String title;

  Title({required this.type, required this.title});

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class Aired {
  final DateTime? from;
  final DateTime? to;
  final AiredProp prop;
  final String string;

  Aired({this.from, this.to, required this.prop, required this.string});

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
  Map<String, dynamic> toJson() => _$AiredToJson(this);
}

@JsonSerializable()
class AiredProp {
  final AiredDate from;
  final AiredDate to;

  AiredProp({required this.from, required this.to});

  factory AiredProp.fromJson(Map<String, dynamic> json) =>
      _$AiredPropFromJson(json);
  Map<String, dynamic> toJson() => _$AiredPropToJson(this);
}

@JsonSerializable()
class AiredDate {
  final int? day;
  final int? month;
  final int? year;

  AiredDate({this.day, this.month, this.year});

  factory AiredDate.fromJson(Map<String, dynamic> json) =>
      _$AiredDateFromJson(json);
  Map<String, dynamic> toJson() => _$AiredDateToJson(this);
}

@JsonSerializable()
class Broadcast {
  final String? day;
  final String? time;
  final String? timezone;
  final String? string;

  Broadcast({this.day, this.time, this.timezone, this.string});

  factory Broadcast.fromJson(Map<String, dynamic> json) =>
      _$BroadcastFromJson(json);
  Map<String, dynamic> toJson() => _$BroadcastToJson(this);
}

@JsonSerializable()
class Genre {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String type;
  final String name;
  final String url;

  Genre({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
