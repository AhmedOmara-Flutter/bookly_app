import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/feature/home/data/model/book_model.dart';
import 'package:bookly_app/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices _apiServices;

  HomeRepoImpl(this._apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchTopRatedBooks() async {
    try {
      final data = await _apiServices.getData('trending/daily.json');
      final List<BookModel> books = [];
      for (var book in data['works']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      print(e.toString());
      return left(ServerError(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final data = await _apiServices.getData('trending/weekly.json');
      final List<BookModel> books = [];
      for (var book in data['works']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      print(e.toString());
      return left(ServerError(message: e.toString()));
    }
  }
}
