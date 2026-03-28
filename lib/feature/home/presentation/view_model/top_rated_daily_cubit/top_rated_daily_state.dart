part of 'top_rated_daily_cubit.dart';

@immutable
sealed class TopRatedDailyState {}

final class TopRatedDailyInitial extends TopRatedDailyState {}

final class TopRatedDailyBooksLoading extends TopRatedDailyState {}

final class TopRatedDailyBooksSuccess extends TopRatedDailyState {
  final List<BookModel> books;

  TopRatedDailyBooksSuccess({required this.books});
}
final class TopRatedDailyBooksError extends TopRatedDailyState {
  final String message;

  TopRatedDailyBooksError({required this.message});
}
