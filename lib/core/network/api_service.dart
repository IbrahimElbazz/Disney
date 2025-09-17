import 'package:dio/dio.dart';
import 'package:disney/core/network/api_constants.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  // get top anime
  @GET(ApiConstants.topAnime)
  Future<GetTopAnimeResponseModel> getTopAnime();
}
