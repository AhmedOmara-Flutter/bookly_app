import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/feature/home/data/model/book_model.dart';
import 'package:bookly_app/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices _apiServices;

  HomeRepoImpl(this._apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final data = await _apiServices.getData(
          'volumes?q=programming&filter=free-ebooks');
      final List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      print(e.toString());
      return left(ServerError(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSeller() async {
    try {
      final data = await _apiServices.getData(
          'volumes?q=subject:fiction&orderBy=relevance');
      final List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      print(e.toString());
      return left(ServerError(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      String category) async {
    try {
      final data = await _apiServices.getData('volumes?q=subject:$category');
      final List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      print(e.toString());
      return left(ServerError(message: e.toString()));
    }
  }
}
