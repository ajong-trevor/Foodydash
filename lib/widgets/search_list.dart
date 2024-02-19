import 'package:flutter/material.dart';

import '../widgets/search_list_item.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return SearchListItem();
      },
    );
  }
}
