import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';
import '../widgets/search_list.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Form(
          key: _formKey,
          child: TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              label: const Text('Search...'),
              labelStyle: TextStyle(
                color: AppColors.grayColor,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ),
      body: SearchList(),
    );
  }
}
