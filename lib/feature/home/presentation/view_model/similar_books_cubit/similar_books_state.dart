part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksSuccess extends SimilarBooksState {
  final List<SimilarBooksModel> books;

  SimilarBooksSuccess({required this.books});
}
final class SimilarBooksError extends SimilarBooksState {
  final String message;

  SimilarBooksError({required this.message});
}
final class SimilarBooksLoading extends SimilarBooksState {}
