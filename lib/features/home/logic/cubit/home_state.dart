import 'package:disney/core/network/api_error_model.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initialhome() = _InitialHome;

  // get top anime
  const factory HomeState.getTopAnimeLoading() = GetTopAnimeLoading;
  const factory HomeState.getTopAnimeSuccess(
    GetTopAnimeResponseModel getTopAnimeResponseModel,
  ) = GetTopAnimeSuccess;
  const factory HomeState.getTopAnimeError(ApiErrorModel error) =
      GetTopAnimeError;
}
