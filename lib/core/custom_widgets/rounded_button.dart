import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;

  // final Function press;
  final VoidCallback? press;
  final Color textColor;
  final double textSize;
  final double width;
  final double radius;

  const RoundedButton({
    Key? key,
    required this.text,
    this.press,
    required this.textColor,
    this.textSize = 14, required this.width,
    this.radius=8
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return Container(
      width:width,
      height: 40.h,
      margin: const EdgeInsets.symmetric(vertical: 1),
      decoration: BoxDecoration(
        // color: color,
          gradient: LinearGradient(
            colors: [
              ColorCode.lightBlueColor,
              ColorCode.lightBlueColor,
              ColorCode.lightBlueColor,
              ColorCode.lightBlueColor,
              ColorCode.blueColor,
              ColorCode.blueColor,
            ],
          ),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(1.0),
          primary: Colors.white,
          // textStyle: const TextStyle(fontSize: textSize),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 14),
        ),




      ),
    );

  }
}


