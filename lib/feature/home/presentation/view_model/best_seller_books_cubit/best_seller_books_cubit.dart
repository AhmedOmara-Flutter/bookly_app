import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this._homeRepo) : super(BestSellerBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> bestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await _homeRepo.fetchBestSeller();
    result.fold((failure) {
      print(failure);
      emit(BestSellerBooksError(message: failure.message));
    }, (data) {
      emit(BestSellerBooksSuccess(books: data));
    });
  }
}
