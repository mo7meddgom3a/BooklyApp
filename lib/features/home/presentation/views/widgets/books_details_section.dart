import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/core/widgets/book_rating.dart';
import 'package:booklyapp/core/widgets/custom_book_image.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.24),
          child: const CustomBookImage(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fcairo&psig=AOvVaw0X9AbVwbNmVe-Ur3LJ_SHU&ust=1715180124765000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOjjh4Lm-4UDFQAAAAAdAAAAABAE",),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 3,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        const BookRating(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: const BooksActionButton(),
        ),
      ],
    );
  }
}

