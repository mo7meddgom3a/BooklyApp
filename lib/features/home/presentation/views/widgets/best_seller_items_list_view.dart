import 'package:booklyapp/features/home/presentation/views/widgets/best_seller_items.dart';
import 'package:flutter/material.dart';

class BestSellerItemsListView extends StatelessWidget {
  const BestSellerItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding:  EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.only(bottom: 20.0),
            child:  BestSellerItems(),
          );
        },
      ),
    );
  }
}
