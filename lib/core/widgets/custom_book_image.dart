
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,

        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error , size: 60,),
          ),
        ),
        // child: Container(
        //   height: MediaQuery.of(context).size.height * 0.2,
        //   width: 100,
        //   decoration: BoxDecoration(
        //     image:  DecorationImage(
        //       image: NetworkImage(
        //         imageUrl,
        //       ),
        //       fit: BoxFit.fill,
        //     ),
        //     borderRadius: BorderRadius.circular(16),
        //   ),
        // ),
      ),
    );
  }
}
