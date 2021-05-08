import 'package:first_app/Widgets/IconFont.dart';
import 'package:first_app/helpers/IconFontHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {
  int duration = 0;
  Widget gotopage;

  Splashpage({this.gotopage, this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.gotopage));
    });
    return Scaffold(
      body: Container(
        color: Color(0xFF80C038),
        child: Center(
            child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.LOGO,
          size: 100,
        )),
      ),
    );
  }
}
