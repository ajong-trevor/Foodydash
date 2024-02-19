import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';
import './search_screen.dart';
import '../widgets/carousel.dart';
import '../widgets/my_title.dart';
import '../widgets/restaurant_list.dart';
import '../widgets/food_list.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final statusBar = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Image(
          image: AssetImage('assets/images/FoodyDash-logo.png'),
        ),
        leadingWidth: 100.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: AppColors.orangeColor,
          ),
          IconButton(
            onPressed: () {
              AppDrawer();
            },
            icon: Icon(
              Icons.more_vert,
              color: AppColors.greenColor,
            ),
          ),
        ],
      ),
      // drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: (height - statusBar) * 0.07,
              margin: EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 5.0,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 40.0,
                  child: Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabled: false,
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: AppColors.grayColor,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.grayColor,
                        ),
                        label: const Text(
                          'Search your favorite resturant',
                        ),
                        labelStyle: TextStyle(
                          color: AppColors.grayColor,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: (height - statusBar) * 0.31,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTitle(
                      titleName: "Today's Special",
                      titleFontSize: 20.0,
                      titleColor: AppColors.orangeColor,
                      titleFontWeight: FontWeight.w600,
                    ),
                    Carousel(),
                  ]),
            ),
            Container(
              height: (height - statusBar) * 0.26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyTitle(
                    titleName: 'Visit Restaurants',
                    titleFontSize: 18.0,
                    titleColor: AppColors.orangeColor,
                    titleFontWeight: FontWeight.normal,
                  ),
                  RestaurantList(),
                ],
              ),
            ),
            MyTitle(
              titleName: 'Explore',
              titleFontSize: 18.0,
              titleColor: AppColors.orangeColor,
              titleFontWeight: FontWeight.normal,
            ),
            FoodList(),
          ],
        ),
      ),
    );
  }
}
