import 'package:disney/core/network/api_result.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';
import 'package:disney/features/search/data/repos/search_repo.dart';
import 'package:disney/features/search/logic/cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(SearchState.initialSearch());

  final SearchRepo _searchRepo;

  int page = 1;
  bool max = false;
  List<Anime> animeList = [];

  Future<void> searchAnime(String? query, {required bool refreash}) async {
    if (refreash) {
      page = 1;
      max = false;
      animeList = [];
      emit(SearchState.loadingSearch());
    }
    if (max) return;

    final response = await _searchRepo.searchAnime(query, page);
    response.when(
      success: (data) {
        if (data.data.isEmpty) {
          max = true;
        }

        page++;
        animeList.addAll(data.data);
        emit(
          SearchState.successSearch(
            GetTopAnimeResponseModel(
              data: animeList,
              pagination: data.pagination,
            ),
          ),
        );
      },
      failure: (apiErrorModel) => emit(SearchState.errorSearch(apiErrorModel)),
    );
  }
}
