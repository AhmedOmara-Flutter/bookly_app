import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await _homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      print(failure);
      emit(FeaturedBooksError(message: failure.message));
    }, (data) {
      emit(FeaturedBooksSuccess(books: data));
    });
  }

}
