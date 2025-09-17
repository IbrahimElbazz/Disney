import 'package:disney/core/network/api_result.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';
import 'package:disney/features/home/data/repos/home_repo.dart';
import 'package:disney/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initialhome());
  final HomeRepo _homeRepo;

  // get top anime
  List<Anime> data = [];
  Future<void> getTopAmine() async {
    emit(HomeState.getTopAnimeLoading());

    final response = await _homeRepo.getTopAnime();
    response.when(
      success: (GetTopAnimeResponseModel data) {
        emit(HomeState.getTopAnimeSuccess(data));
      },

      failure: (error) => emit(HomeState.getTopAnimeError(error)),
    );
  }

  //  get home news
  Future<void> getHomeNews() async {
    emit(HomeState.getNewsHomeLoading());

    final result = await _homeRepo.getNewsHome();
    result.when(
      success: (GetTopAnimeResponseModel data) {
        emit(HomeState.getNewsHomeSuccess(data));
      },

      failure: (error) => emit(HomeState.getNewsHomeError(error)),
    );
  }
}
