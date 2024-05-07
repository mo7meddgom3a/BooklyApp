import 'package:booklyapp/core/utils/custom_loading_indicator.dart';
import 'package:booklyapp/core/widgets/custom_book_image.dart';
import 'package:booklyapp/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBoosListView extends StatelessWidget {
  const FeaturedBoosListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoaded) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                );
              },
            ),
          );
        }
        else if (state is FeaturedBooksError) {
          return CustomError(errorMessage: state.message);
        }else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
