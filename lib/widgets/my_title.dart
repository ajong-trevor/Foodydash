import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String titleName;
  final double titleFontSize;
  final Color titleColor;
  final FontWeight titleFontWeight;

  const MyTitle({
    required this.titleName,
    required this.titleFontSize,
    required this.titleColor,
    required this.titleFontWeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: Text(
        titleName,
        style: TextStyle(
          fontSize: titleFontSize,
          color: titleColor,
          fontWeight: titleFontWeight,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
