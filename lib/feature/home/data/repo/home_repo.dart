import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/feature/home/data/model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchBestSeller();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(String category);
}

