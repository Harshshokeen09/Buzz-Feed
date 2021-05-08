import 'package:first_app/Widgets/IconFont.dart';
import 'package:first_app/Widgets/themebutton.dart';
import 'package:first_app/helpers/IconFontHelper.dart';
import 'package:first_app/helpers/appcolors.dart';
import 'package:first_app/pages/categorylistpage.dart';
import 'package:first_app/pages/onboardingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
              child: Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    'assets/imgs/transport.png',
                    fit: BoxFit.cover,
                  ))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: ClipOval(
                    child: Container(
                      width: 180,
                      height: 180,
                      color: Color(0xFF80C038),
                      alignment: Alignment.center,
                      child: IconFont(
                        iconName: IconFontHelper.LOGO,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Text('BuZZ Feed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Text('Makes your Morning\n Chaos Free and Happy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    )),
                SizedBox(height: 45),
                ThemeButton(
                  label: 'Try Now',
                  highlight: Colors.red[900],
                  color: AppColors.SN1,
                  onClick: () {},
                ),
                ThemeButton(
                  label: 'About the App',
                  color: AppColors.MAIN_COLOR,
                  highlight: Colors.red[900],
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnBoardingPage()));
                  },
                ),
                ThemeButton(
                  label: 'Login Here',
                  labelColor: AppColors.MAIN_COLOR,
                  color: Colors.transparent,
                  highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                  borderColor: AppColors.MAIN_COLOR,
                  borderWidth: 4,
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Categorylistpage()));
                  },
                )

                /*Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          splashColor: Color(0xFF80C038).withOpacity(0.2),
                          highlightColor: Color(0xFF80c038).withOpacity(0.2),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Categorylistpage()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Make Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF80C038),
                                  fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Color(0xFF80C038), width: 4)),
                          )),
                    ),
                  ),
                )*/
              ],
            ),
          )
        ],
      ),
    ));
  }
}
