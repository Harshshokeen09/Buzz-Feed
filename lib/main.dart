import 'package:first_app/pages/Splashpage.dart';
import 'package:first_app/pages/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    debugShowCheckedModeBanner: false,
    home:Splashpage(duration: 3, gotopage: Welcomepage()),
  ));
}
