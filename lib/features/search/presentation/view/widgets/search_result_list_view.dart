import 'package:booklyapp/features/home/presentation/views/widgets/books_items.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          // child: BoocksItems(bookModel: ,),
        );
      },
    ) ;
  }
}