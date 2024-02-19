import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/my_title.dart';

class FoodDetailScreen extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String description;
  final int stars;

  FoodDetailScreen(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.description,
      required this.stars,
      super.key});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  String dropdownValue = 'Deliver';

  List<String> items = [
    'Deliver',
    'Pick up',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        icon: Icons.shopping_cart,
        titleText: widget.name,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Reviews',
                      style: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    const SizedBox(width: 10.0),
                    Icon(
                      Icons.rotate_left_rounded,
                      color: AppColors.orangeColor,
                      size: 25.0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    // Make the price to change dynamically
                    'XAF ${widget.price}',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (i) {
                      return Icon(
                        // Make the value of the star to change dynamically
                        i < widget.stars ? Icons.star : Icons.star_border,
                        size: 25.0,
                        color: AppColors.orangeColor,
                      );
                    }),
                  ),
                ],
              ),
            ),
            MyTitle(
              titleName: 'Details',
              titleFontSize: 20.0,
              titleColor: Colors.black,
              titleFontWeight: FontWeight.normal,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                widget.description,
                style: TextStyle(
                  fontSize: 15.0,
                  color: AppColors.grayColor,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 18.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Item Price',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: AppColors.grayColor,
                    ),
                  ),
                  Text(
                    'XAF ${widget.price}',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Delivary Charge',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: AppColors.grayColor,
                    ),
                  ),
                  const Text(
                    'XAF 500',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 15.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: Form(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: AppColors.grayColor,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          label: const Text('Quantity'),
                          labelStyle: TextStyle(
                            color: AppColors.grayColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: Form(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: AppColors.grayColor,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          label: const Text('Location'),
                          labelStyle: TextStyle(
                            color: AppColors.grayColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButton(
                        // Need to make the color dynamic based on if an item on the dropdown is selected or not
                        style: TextStyle(color: Colors.black54),
                        iconEnabledColor: Colors.black26,
                        isExpanded: true,
                        underline: Container(),
                        value: dropdownValue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(
                            () {
                              dropdownValue = newValue!;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.grayColor,
                    ),
                  ),
                  Text(
                    'XAF 2000',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.greenColor,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Proceed to Payment'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.orangeColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
