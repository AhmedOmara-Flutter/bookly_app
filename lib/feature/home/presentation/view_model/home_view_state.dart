part of 'home_view_cubit.dart';

@immutable
sealed class HomeViewState {}

final class HomeViewInitial extends HomeViewState {}
final class HomeViewLoading extends HomeViewState {}
final class HomeViewSuccess extends HomeViewState {
  final List<BookModel> books;

  HomeViewSuccess({required this.books});
}
final class HomeViewError extends HomeViewState {
  final String message;

  HomeViewError({required this.message});
}
