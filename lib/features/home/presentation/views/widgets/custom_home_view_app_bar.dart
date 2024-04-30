import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

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
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KSearchView);
            },
          ),
        ],
      ),
    );
  }
}
