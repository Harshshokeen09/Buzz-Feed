import 'package:first_app/helpers/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  String label;
  Function onClick;
  Color color, highlight, borderColor, labelColor;
  Widget icon;
  double borderWidth;

  ThemeButton(
      {this.label,
      this.labelColor = Colors.white,
      this.color = AppColors.MAIN_COLOR,
      this.borderColor = Colors.transparent,
      this.highlight = AppColors.PWL,
      this.borderWidth = 4,
      this.icon,
      @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          color: this.color,
          child: InkWell(
              splashColor: this.highlight,
              highlightColor: this.highlight,
              onTap: () {
                this.onClick();
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    border: Border.all(color: Color(0xFF80C038), width: 4)),
                   child: this.icon==null?
                   Text(this.label,
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 16,
                     color: this.labelColor,
                     fontWeight: FontWeight.bold)):
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         this.icon,
                         SizedBox(width: 10),
                         Text(this.label,
                         style: TextStyle(
                           fontSize: 16,
                           color: this.labelColor,
                           fontWeight: FontWeight.bold
                          ),)
                       ],)   

              ),
              ),
        ),
      ),
      
    );
  }
}
