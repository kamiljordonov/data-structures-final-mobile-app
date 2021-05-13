import 'package:flutter/material.dart';

import '../../../size_config.dart';
import './category_card.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/children.svg", "text": "Балдар"},
      {"icon": "assets/icons/diet.svg", "text": "Тамак"},
      {"icon": "assets/icons/humor.svg", "text": "Күлкү"},
      {"icon": "assets/icons/parenting.svg", "text": "Үй-бүлө"},
      // {"icon": "assets/icons/science.svg", "text": "Илимий"},
      {"icon": "assets/icons/and_more.svg", "text": "Башка"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}
