import 'package:booklyapp/features/home/presentation/views/widgets/featured_books_item.dart';
import 'package:flutter/material.dart';

class FeaturedBoosListView extends StatelessWidget {
  const FeaturedBoosListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const FeaturedBooksItems();
        },
      ),
    );
  }
}
