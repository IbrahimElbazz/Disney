import 'package:disney/core/network/api_result.dart';
import 'package:disney/features/home/data/repos/home_repo.dart';
import 'package:disney/features/search/data/repos/search_repo.dart';
import 'package:disney/features/search/logic/cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(SearchState.initialSearch());

  final SearchRepo _searchRepo;

  Future<void> searchAnime(String? query) async {
    emit(SearchState.loadingSearch());
    final response = await _searchRepo.searchAnime(query);
    response.when(
      success: (data) => emit(SearchState.successSearch(data)),
      failure: (apiErrorModel) => emit(SearchState.errorSearch(apiErrorModel)),
    );
  }
}
