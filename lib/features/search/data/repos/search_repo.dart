import 'package:disney/core/network/api_error_handel.dart';
import 'package:disney/core/network/api_result.dart';
import 'package:disney/core/network/api_service.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';

class SearchRepo {
  final ApiService _apiService;

  SearchRepo(this._apiService);

  Future<ApiResult<GetTopAnimeResponseModel>> searchAnime(String? query) async {
    try {
      final response = await _apiService.searchAnime(query);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
