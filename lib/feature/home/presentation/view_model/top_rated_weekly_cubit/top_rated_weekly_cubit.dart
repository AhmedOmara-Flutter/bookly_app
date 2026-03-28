import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'top_rated_weekly_state.dart';

class TopRatedWeeklyCubit extends Cubit<TopRatedWeeklyState> {
  TopRatedWeeklyCubit(this._homeRepo) : super(TopRatedWeeklyInitial());

  final HomeRepo _homeRepo;

  Future<void> getTopRatedWeaklyBooks() async {
    emit(TopRatedWeaklyBooksLoading());
    var result = await _homeRepo.fetchTopRatedBooks();
    result.fold((failure) {
      print(failure);
      emit(TopRatedWeaklyBooksError(message: failure.message));
    }, (data) {
      print('topRated is $data');
      emit(TopRatedWeaklyBooksSuccess(books: data));
    });
  }
}
