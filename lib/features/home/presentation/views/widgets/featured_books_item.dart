
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedBooksItems extends StatelessWidget {
  const FeaturedBooksItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        height: MediaQuery.of(context).size.height * 0.2,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          image: const DecorationImage(
            image: AssetImage(
              AssetsData.testImage,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
