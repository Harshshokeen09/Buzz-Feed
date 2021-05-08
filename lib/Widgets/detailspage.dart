import 'package:first_app/Widgets/mainappbar.dart';
import 'package:first_app/models/subcategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  SubCategory subCategory;
  Detailspage({this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Text(this.subCategory.name),
      ),
    );
  }
}
