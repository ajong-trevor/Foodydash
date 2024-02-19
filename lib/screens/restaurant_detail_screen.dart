import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';
import '../widgets/my_title.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/restaurant_detail_food.dart';
// import '../services/food_services.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final String restaurantId;
  final String restaurantName;
  final String restaurantImageUrl;
  final String restaurantLocation;
  final int restaurantStar;

  const RestaurantDetailScreen({
    required this.restaurantId,
    required this.restaurantImageUrl,
    required this.restaurantLocation,
    required this.restaurantName,
    required this.restaurantStar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(titleText: restaurantName, icon: Icons.shopping_cart),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 5.0,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(restaurantImageUrl), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            restaurantLocation,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (i) {
                        return Icon(
                          i < restaurantStar ? Icons.star : Icons.star_border,
                          size: 25.0,
                          color: AppColors.orangeColor,
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.orangeColor,
                ),
                onPressed: () {},
                child: Text('More details'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: MyTitle(
                titleName: 'Popular',
                titleFontSize: 18.0,
                titleColor: AppColors.orangeColor,
                titleFontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              margin: const EdgeInsets.only(bottom: 8.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return RestaurantDetailFood();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
