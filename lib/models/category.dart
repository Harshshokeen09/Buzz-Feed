import 'package:flutter/cupertino.dart';

import 'dart:ui';

class Category {
  String name;
  String icon;
  Color color;
  String imgname;
  List<Category> subcategories;

  Category(
      {this.name, this.icon, this.color, this.imgname, this.subcategories});

  String get imgName => imgname;
}
