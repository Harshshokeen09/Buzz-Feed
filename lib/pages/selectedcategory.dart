import 'package:first_app/Widgets/categoryindex.dart';
import 'package:first_app/Widgets/detailspage.dart';
import 'package:first_app/Widgets/mainappbar.dart';
import 'package:first_app/models/category.dart';
import 'package:flutter/material.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category selectedCategory;

  SelectedCategoryPage({this.selectedCategory});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryIcon(
                color: this.selectedCategory.color,
                iconName: this.selectedCategory.icon,
              ),
              SizedBox(width: 12),
              Text(this.selectedCategory.name,
                  style: TextStyle(
                      color: this.selectedCategory.color, fontSize: 20))
            ],
          ),
          SizedBox(height: 30),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(this.selectedCategory.subcategories.length,
                (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detailspage(
                                subCategory:
                                    this.selectedCategory.subcategories[index],
                              )));
                },
                child: Container(
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/imgs/' +
                              this
                                  .selectedCategory
                                  .subcategories[index]
                                  .imgName +
                              '.png',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(this.selectedCategory.subcategories[index].name,
                          style: TextStyle(color: this.selectedCategory.color))
                    ],
                  ),
                ),
              );
            }),
          ))
        ],
      )),
    );
  }
}
