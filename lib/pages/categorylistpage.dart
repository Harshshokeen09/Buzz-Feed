import 'package:first_app/Widgets/IconFont.dart';
import 'package:first_app/Widgets/categorycard.dart';
import 'package:first_app/Widgets/categoryindex.dart';
import 'package:first_app/helpers/IconFontHelper.dart';
import 'package:first_app/helpers/appcolors.dart';
import 'package:first_app/helpers/utils.dart';
import 'package:first_app/models/category.dart';
import 'package:first_app/pages/selectedcategory.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class Categorylistpage extends StatelessWidget {
  List<Category> categories = utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: IconFont(
            iconName: IconFontHelper.LOGO,
            color: AppColors.MAIN_COLOR,
            size: 40,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: AppColors.MAIN_COLOR),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 1),
              padding: EdgeInsets.all(10),
              child: ClipOval(
                  // borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset('assets/imgs/me1.jpg')),
            )
          ],
        ),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 10),
              child: Text('Select Your Option',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black)),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (BuildContext ctx, int index) {
                return CategoryCard(
                    category: categories[index],
                    onCardClick: () {
                      //To NAVIGATE ON THE OTHER PAGE
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectedCategoryPage(
                                selectedCategory: this.categories[index],
                              )));
                    });
              },
            ))
          ],
        )));
  }
}
