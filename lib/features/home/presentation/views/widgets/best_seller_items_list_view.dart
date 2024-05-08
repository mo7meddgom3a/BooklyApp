import 'package:booklyapp/core/utils/custom_loading_indicator.dart';
import 'package:booklyapp/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/books_items.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerItemsListView extends StatelessWidget {
  const BestSellerItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoaded) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: BoocksItems(bookModel: state.books[index],),
              );
            },
          );
        } else if (state is NewestBooksError) {
          return CustomError(errorMessage: state.message);
        }else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
