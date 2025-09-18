import 'package:disney/core/network/api_error_model.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initialSearch() = InitialSearch;
  const factory SearchState.loadingSearch() = LoadingSearch;
  const factory SearchState.successSearch(GetTopAnimeResponseModel animes) =
      SuccessSearch;
  const factory SearchState.errorSearch(ApiErrorModel error) = ErrorSearch;
}
