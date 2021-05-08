import 'package:first_app/helpers/IconFontHelper.dart';
import 'package:first_app/helpers/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'IconFont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themecolor;

  MainAppBar({this.themecolor = AppColors.MAIN_COLOR});
  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: IconFont(
        iconName: IconFontHelper.LOGO,
        color: widget.themecolor,
        size: 40,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.themecolor),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 1),
          padding: EdgeInsets.all(10),
          child: ClipOval(
              // borderRadius: BorderRadius.circular(300.0),
              child: Image.asset('assets/imgs/me1.jpg')),
        )
      ],
    );
  }
}
