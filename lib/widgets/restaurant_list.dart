import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';
import '../services/restaurant_services.dart';
import '../screens/restaurant_detail_screen.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
            child: Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RestaurantDetailScreen(
                                restaurantId: restaurants[index].id,
                                restaurantImageUrl: restaurants[index].imageUrl,
                                restaurantLocation: restaurants[index].location,
                                restaurantName:
                                    '${restaurants[index].name} Restaurant',
                                restaurantStar: restaurants[index].star,
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 85.0,
                        height: 85.0,
                        padding: const EdgeInsets.all(3.0),
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
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(restaurants[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        restaurants[index].name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        5,
                        (i) {
                          return Icon(
                            i < restaurants[index].star
                                ? Icons.star
                                : Icons.star_border,
                            size: 12.0,
                            color: AppColors.orangeColor,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
