import 'package:booklyapp/core/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.only(right: 10.0),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
