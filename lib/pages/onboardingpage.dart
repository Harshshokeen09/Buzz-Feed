import 'package:first_app/Widgets/IconFont.dart';
import 'package:first_app/Widgets/mainappbar.dart';
import 'package:first_app/Widgets/themebutton.dart';
import 'package:first_app/helpers/IconFontHelper.dart';
import 'package:first_app/helpers/appcolors.dart';
import 'package:first_app/helpers/utils.dart';
import 'package:first_app/models/onboardingcontent.dart';
import 'package:first_app/pages/categorylistpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<OnboardingContent> _content = utils.getOnboarding();
  int pageIndex = 0;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: PageView(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  pageIndex = page;
                });
              },
              children: List.generate(
                  _content.length,
                  (index) => Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.MAIN_COLOR.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: Offset.zero)
                            ]),
                        child: Column(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Image.asset(
                                    'assets/imgs/${_content[index].img}.png'),
                                SizedBox(height: 5),
                                Text(_content[index].message,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColors.MAIN_COLOR,
                                        fontSize: 20)),
                                SizedBox(height: 30),
                                Visibility(
                                  visible: index == _content.length - 1,
                                  child: ThemeButton(
                                    onClick: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Categorylistpage()));
                                    },
                                    label: 'Enter Here',
                                    color: AppColors.SN1,
                                    highlight: AppColors.SN1,
                                  ),
                                )
                              ],
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  _content.length,
                                  (index) => GestureDetector(
                                        onTap: () {
                                          _controller.animateTo(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  index,
                                              duration:
                                                  Duration(microseconds: 500),
                                              curve: Curves.easeInOut);
                                        },
                                        child: Container(
                                          width: 20,
                                          height: 10,
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: AppColors.MAIN_COLOR,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                width: 6,
                                                color: pageIndex == index
                                                    ? Color(0xFFC1E09E)
                                                    : Theme.of(context)
                                                        .canvasColor,
                                              )),
                                        ),
                                      )),
                            ),
                            SizedBox(height: 10)
                          ],
                        ),
                      )),
            )),
            ThemeButton(
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Categorylistpage()));
                },
                label: 'Jump On Boarding')
          ],
        ),
      ),
    );
  }
}
