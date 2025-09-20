import 'package:disney/core/network/api_error_handel.dart';
import 'package:disney/core/network/api_result.dart';
import 'package:disney/core/network/api_service.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';

class HomeRepo {
  HomeRepo(this._apiService);
  ApiService _apiService;

  Future<ApiResult<GetTopAnimeResponseModel>> getTopAnime() async {
    try {
      final response = await _apiService.getTopAnime(1, 5);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  // get news
  Future<ApiResult<GetTopAnimeResponseModel>> getNewsHome() async {
    try {
      final response = await _apiService.getNewsHome(1, 5);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
