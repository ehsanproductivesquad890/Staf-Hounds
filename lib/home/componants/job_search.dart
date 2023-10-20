import 'package:flutter/material.dart';

import 'app_search_bar.dart';
import 'search_menu.dart';

class JobSearch extends StatelessWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSearchBar(),
        SizedBox(
          width: 20,
        ),
        SearchMenu()
      ],
    );
  }
}
