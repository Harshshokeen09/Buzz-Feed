import 'package:first_app/helpers/IconFontHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'IconFont.dart';

class CategoryIcon extends StatelessWidget {
  Color color;
  String iconName;
  double size;

  CategoryIcon({this.color, this.iconName, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Container(
      color: this.color,
      padding: EdgeInsets.all(10),
      child: IconFont(
        color: Colors.white,
        iconName: IconFontHelper.LOGO,
        size: 30,
      ),
    ));
  }
}
