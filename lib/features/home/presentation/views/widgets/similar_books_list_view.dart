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
            child: CustomBookImage(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fcairo&psig=AOvVaw0X9AbVwbNmVe-Ur3LJ_SHU&ust=1715180124765000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOjjh4Lm-4UDFQAAAAAdAAAAABAE",),
          );
        },
      ),
    );
  }
}
