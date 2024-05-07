import 'package:booklyapp/core/errors/failuers.dart';

import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failures, BookModel>> fetchBestSellingBooks() {
    // TODO: implement fetchBestSellingBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, BookModel>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}