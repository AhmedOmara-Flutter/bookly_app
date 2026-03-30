import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/feature/home/data/model/book_model.dart';
import 'package:bookly_app/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../model/similar_books_model.dart';

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

  @override
  Future<Either<Failure, List<SimilarBooksModel>>> fetchSimilarFeaturedBooks(String bookID) async{
    try {
      String key=bookID.replaceAll('/works/', '');
      final data = await _apiServices.getData('works/$key.json');
      final subjects = data['subjects'];
      final similarBooks=await _apiServices.getData('subjects/${subjects[0]}.json');
      print('similarBooks $similarBooks');
      final List<SimilarBooksModel> books = [];
      for (var book in similarBooks['works']) {
        books.add(SimilarBooksModel.fromJson(book));
      }
      print(books.map((e)=>e.title));
      return right(books);
    } catch (e) {
      print(e.toString());
      return left(ServerError(message: e.toString()));
    }
  }
}
