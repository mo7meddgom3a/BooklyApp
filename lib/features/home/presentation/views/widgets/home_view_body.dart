import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/constant.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/featured_boos_List_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBoosListView(),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Best Seller",
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerItems(),
        ],
      ),
    );
  }
}

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
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
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
