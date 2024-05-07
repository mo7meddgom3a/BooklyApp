import 'package:booklyapp/core/errors/failuers.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, BookModel>> fetchBestSellingBooks();
  Future<Either<Failures, BookModel>> fetchFeaturedBooks();
}

