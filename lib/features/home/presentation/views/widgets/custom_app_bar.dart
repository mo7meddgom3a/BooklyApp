import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.barsStaggered),
            onPressed: () {},
          ),

          Image.asset(
            AssetsData.logo,
            height: 70,
            width: 100,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {},
          ),

          // IconButton(
          //   icon: const Icon(FontAwesomeIcons.bell),
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
