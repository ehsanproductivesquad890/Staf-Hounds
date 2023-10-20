import 'package:flutter/material.dart';

import '../../app_theme/constants.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
        decoration: const InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: primaryColor,
              size: 30,
            ),
            hintText: 'Search Job',
            border: InputBorder.none),
      ),
    );
  }
}
