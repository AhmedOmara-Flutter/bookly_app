import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'top_rated_daily_state.dart';

class TopRatedDailyCubit extends Cubit<TopRatedDailyState> {
  TopRatedDailyCubit(this._homeRepo) : super(TopRatedDailyInitial());

  final HomeRepo _homeRepo;

  Future<void> getTopRatedDailyBooks() async {
    emit(TopRatedDailyBooksLoading());
    var result = await _homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      print(failure);
      emit(TopRatedDailyBooksError(message: failure.message));
    }, (data) {
      emit(TopRatedDailyBooksSuccess(books: data));
    });
  }

}
