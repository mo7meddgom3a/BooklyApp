import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
  });

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(FontAwesomeIcons.arrowLeft),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: searchController,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      hintText: 'Search for books, authors, etc.',
                      suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    searchController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
