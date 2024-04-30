import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also like",
            style: Styles.textStyle16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SimilarBooksListView(),
        SizedBox(
          height: 30,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}
