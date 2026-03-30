part of 'best_seller_books_cubit.dart';

@immutable
sealed class BestSellerBooksState {}

final class BestSellerBooksInitial extends BestSellerBooksState {}

final class BestSellerBooksLoading extends BestSellerBooksState {}

final class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<BookModel> books;

  BestSellerBooksSuccess({required this.books});
}

final class BestSellerBooksError extends BestSellerBooksState {
  final String message;

  BestSellerBooksError({required this.message});
}
