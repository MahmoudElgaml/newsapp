import 'package:flutter/material.dart';

import 'category_card.dart';

class ListCategoryCard extends StatelessWidget {
  const ListCategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(),
        separatorBuilder: (context, int index) => SizedBox(width: 10),
        itemCount: 10,
      ),
    );
  }
}
