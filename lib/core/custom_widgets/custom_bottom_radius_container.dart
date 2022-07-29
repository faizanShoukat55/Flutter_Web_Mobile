import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';


class CustomBottomRadiusContainer extends StatelessWidget {
  final Widget? child;

  const CustomBottomRadiusContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorCode.lightGreyColor,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ), //BoxShadow
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
          border: Border.all(
            color: ColorCode.lightGreyColor,
            width: 1,
          )),

      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.03,),


      height: 67.h,
      width: size.width,
      child: child,
    );
  }
}




