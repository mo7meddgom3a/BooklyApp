import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/constant.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/core/widgets/book_rating.dart';
import 'package:booklyapp/core/widgets/custom_book_image.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoocksItems extends StatelessWidget {
  const BoocksItems({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Row(
            children: [
              CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: KGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                     Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14,
                       overflow: TextOverflow.ellipsis,
                       maxLines: 1,
                     ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                         BookRating(rating: bookModel.volumeInfo.averageRating??0, ratingCount: bookModel.volumeInfo.ratingsCount??0),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
