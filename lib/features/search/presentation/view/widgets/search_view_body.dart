import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/search/presentation/view/widgets/custom_search_textfield.dart';
import 'package:booklyapp/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text("Results", style: Styles.textStyle16),
        ),
        const SizedBox(height: 30),
        const Expanded(child: SearchResultListView()),
      ],
    );
  }
}
