import 'package:flutter/material.dart';

import '../services/food_services.dart';
import '../widgets/food_item.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
      margin: EdgeInsets.only(bottom: 15.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.75 / 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FoodItem(
            imageUrl: foods[index].foodImageUrl,
            name: foods[index].foodName,
            price: foods[index].foodPrice,
            restaurantName: foods[index].foodRestaurantName,
            description: foods[index].foodDescrtiption,
            stars: foods[index].foodNumberOfstars,
          );
        },
      ),
    );
  }
}
