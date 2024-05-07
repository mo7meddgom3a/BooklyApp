import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo _homeRepo;

  Future <void> fetchFeaturedBooks() async {
    emit( FeaturedBooksLoading());
    final result = await _homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksError(failure.errorMessage)),
      (books) => emit(FeaturedBooksLoaded(books))
    );

  }
}
