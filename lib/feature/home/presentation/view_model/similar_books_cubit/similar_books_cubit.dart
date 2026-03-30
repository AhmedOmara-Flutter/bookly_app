import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/similar_books_model.dart';
import 'package:meta/meta.dart';

import '../../../data/model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._homeRepo) : super(SimilarBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> getSimilarBooks(String bookID) async {
    emit(SimilarBooksLoading());
    var result = await _homeRepo.fetchSimilarFeaturedBooks(bookID);
    result.fold((failure) {
      print(failure);
      emit(SimilarBooksError(message: failure.message));
    }, (data) {
      emit(SimilarBooksSuccess(books: data));
    });
  }
}
