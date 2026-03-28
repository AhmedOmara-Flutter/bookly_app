part of 'top_rated_weekly_cubit.dart';

@immutable
sealed class TopRatedWeeklyState {}

final class TopRatedWeeklyInitial extends TopRatedWeeklyState {}

final class TopRatedWeaklyBooksLoading extends TopRatedWeeklyState {}

final class TopRatedWeaklyBooksSuccess extends TopRatedWeeklyState {
  final List<BookModel> books;

  TopRatedWeaklyBooksSuccess({required this.books});
}

final class TopRatedWeaklyBooksError extends TopRatedWeeklyState {
  final String message;

  TopRatedWeaklyBooksError({required this.message});
}
