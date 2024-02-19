import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titleText;
  IconData? icon;
  MyAppBar({
    this.titleText,
    this.icon,
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leadingWidth: 65.0,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          margin: EdgeInsets.only(
            top: 8.0,
            left: 15.0,
            bottom: 8.0,
          ),
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
          ),
          child: Icon(
            size: 20.0,
            Icons.arrow_back_ios,
            color: AppColors.greenColor,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        '${titleText == null ? '' : titleText}',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(
            top: 8.0,
            right: 15.0,
            bottom: 8.0,
          ),
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
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon),
            color: AppColors.orangeColor,
          ),
        ),
      ],
    );
  }
}
