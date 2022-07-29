import 'dart:math';

import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_mobile_web/core/assets/images.dart';
import 'package:flutter_mobile_web/core/constants/colors.dart';
import 'package:flutter_mobile_web/core/constants/constants.dart';
import 'package:flutter_mobile_web/core/custom_widgets/custom_bottom_radius_container.dart';
import 'package:flutter_mobile_web/core/custom_widgets/custom_svg_icon.dart';
import 'package:flutter_mobile_web/core/custom_widgets/custom_top_radius_container.dart';
import 'package:flutter_mobile_web/core/custom_widgets/rounded_button.dart';
import 'package:flutter_mobile_web/ui/login_main_page/LoginMainPage_view_model.dart';
import 'package:flutter_mobile_web/ui/login_main_page/tabs/tab1/login_tab1_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/widgets.dart';


class LoginTab1Page extends StatelessWidget {
  const LoginTab1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    bool isMobile = size.width < 850;

    return ChangeNotifierProvider(
        create: (context) => LoginTab1PageViewModel(),
        child: Consumer<LoginTab1PageViewModel>(
          builder: (context, model, child) =>
              SingleChildScrollView(
                // physics: const ScrollPhysics(parent: PageScrollPhysics()),
                child: isMobile? mobileLayout():webLayout(),
              ),));
  }

  Widget mobileLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Center(
          child: customTextView(
              text:
              "Drei einfache Schritte\nzu deinem  neuen Job",
              fontWeight: FontWeight.w600,
              textColor: ColorCode.darkBlueColor,
              fontSize: 21,
              maxLines: 2),
        ),

        /// first step.............................
        Stack(
          children: [
            Positioned(
              left: -34,
              bottom: 0,
              child: Container(
                width: 208.w,
                height: 208.h,
                decoration: BoxDecoration(
                  color:
                  ColorCode.circleBackgroundColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),

            ///step1 image
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Center(
                child: CustomSVGImage(
                    width: 220.w,
                    height: 145.h,
                    path: ImagesPath.loginFirstImage),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: 106.h,
                right: 40.w,
                left: 10.w,
              ),
              child: Container(
                height: 156,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:
                  CrossAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    customTextView(
                      textAlign: TextAlign.end,
                      text: "1.",
                      fontWeight: FontWeight.w600,
                      textColor:
                      ColorCode.darkBlueColor,
                      fontSize: 130,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(bottom: 18.h),
                      child: customTextView(
                        textAlign: TextAlign.end,
                        text:
                        "Erstellen dein Lebenslauf",
                        fontWeight: FontWeight.w600,
                        textColor:
                        ColorCode.darkBlueColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),

        /// first end.............................


        /// Second Step  wave clipper path
        ClipPath(
            clipper: WaveClipperTwo(
                flip: true, reverse: true),
            child: Container(
              height: 50.h,

              ///Background Decoration
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorCode.lightNavyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                    ],
                  )),
            )),
        Container(
          // height: 300,
          color: ColorCode.navyBlueColor,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(
                  right: 10.w,
                  left: 30.w,
                  bottom: 10.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 156,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                      CrossAxisAlignment.end,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        customTextView(
                          textAlign: TextAlign.end,
                          text: "2.",
                          fontWeight: FontWeight.w600,
                          textColor:
                          ColorCode.darkBlueColor,
                          fontSize: 130,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(bottom: 18.h),
                          child: customTextView(
                            textAlign: TextAlign.end,
                            text:
                            "Erstellen dein Lebenslauf",
                            fontWeight: FontWeight.w600,
                            textColor:
                            ColorCode.darkBlueColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///step1 image
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Center(
                      child: CustomSVGImage(
                          width: 220.w,
                          height: 145.h,
                          path: ImagesPath.loginSecondImage),
                    ),
                  ),
                ],
              ),
            ),
          ],),
        ),
        ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 50.h,

              ///Background Decoration
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorCode.lightNavyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                    ],
                  )),

              child: Container(),
            )),

        /// Second end.............................


        /// third step.............................
        Stack(
          children: [
            Positioned(
              top: 0,
              left: -54,
              child: Container(
                width: 303.w,
                height: 303.h,
                decoration: BoxDecoration(
                  color:
                  ColorCode.circleBackgroundColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.only(
                right: 7.w,
                left: 54.w,
              ),
              child: Column(
                children: [
                  Container(
                    height: 156,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                      CrossAxisAlignment.end,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        customTextView(
                          textAlign: TextAlign.end,
                          text: "3.",
                          fontWeight: FontWeight.w600,
                          textColor:
                          ColorCode.darkBlueColor,
                          fontSize: 130,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(bottom: 25.h),
                          child: customTextView(
                              textAlign: TextAlign.start,
                              text:
                              "Mit nur einem Klick\n bewerben",
                              fontWeight: FontWeight.w600,
                              textColor:
                              ColorCode.darkBlueColor,
                              fontSize: 15,
                              maxLines: 2
                          ),
                        ),
                      ],
                    ),
                  ),


                  ///step1 image
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Center(
                      child: CustomSVGImage(
                          width: 220.w,
                          height: 145.h,
                          path: ImagesPath.loginThirdImage),
                    ),
                  ),
                ],
              ),
            )


          ],
        ),

        /// third end.............................


      ],
    );
  }

  Widget webLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Center(
          child: customTextView(
              text:
              "Drei einfache Schritte\nzu deinem  neuen Job",
              fontWeight: FontWeight.w600,
              textColor: ColorCode.darkBlueColor,
              fontSize: 21,
              maxLines: 2),
        ),





        /// first step.............................
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [


                Padding(
                  padding:const  EdgeInsets.only(
                    top: 106,
                    // right: 260,
                    left: 297,
                  ),
                  child: Container(
                    height: 156,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.end,
                      // mainAxisSize: MainAxisSize.max,
                      children: [

                        Container(
                          width: 208,
                          height: 208,
                          decoration: BoxDecoration(
                            color:
                            ColorCode.circleBackgroundColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: customTextView(
                              textAlign: TextAlign.end,
                              text: "1.",
                              fontWeight: FontWeight.w600,
                              textColor:
                              ColorCode.darkBlueColor,
                              fontSize: 130,
                            ),
                          ),
                        ),

                        // customTextView(
                        //   textAlign: TextAlign.start,
                        //   text:
                        //   "Erstellen dein Lebenslauf",
                        //   fontWeight: FontWeight.w600,
                        //   textColor:
                        //   ColorCode.darkBlueColor,
                        //   fontSize: 15,
                        // ),

                        Padding(
                          padding:
                          EdgeInsets.only(bottom: 18),
                          child: customTextView(
                            textAlign: TextAlign.end,
                            text:
                            "Erstellen dein Lebenslauf",
                            fontWeight: FontWeight.w600,
                            textColor:
                            ColorCode.darkBlueColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                ///step1 image
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: const Center(
                    child: CustomSVGImage(
                        width: 220,
                        height: 145,
                        path: ImagesPath.loginFirstImage),
                  ),
                ),
              ],
            ),
          ],
        ),

        /// first end.............................


        Padding(
          padding: const EdgeInsets.only(left: 446.0),
          child: CustomSVGImage(
              width: 220,
              height: 145,
              path: ImagesPath.lineOneImage),
        ),

        /// Second Step  wave clipper path
        ClipPath(
            clipper: WaveClipperTwo(
                flip: true, reverse: true),
            child: Container(
              height: 50.h,

              ///Background Decoration
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      // ColorCode.lightNavyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                    ],
                  )),
            )),
        Container(
          // height: 300,
          color: ColorCode.navyBlueColor,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(
                  right: 10.w,
                  left: 30.w,
                  bottom: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Expanded(
                      flex:1,
                      child: Container()),

                  Expanded(
                      flex:3,
                      child: Row(children: [
                    ///step1 image
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Center(
                        child: CustomSVGImage(
                            width: 220.w,
                            height: 145.h,
                            path: ImagesPath.loginSecondImage),
                      ),
                    ),
                    customFixedWidthSizedBox(40),
                    SizedBox(
                      height: 156,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment:
                        CrossAxisAlignment.end,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          customTextView(
                            textAlign: TextAlign.end,
                            text: "2.",
                            fontWeight: FontWeight.w600,
                            textColor:
                            ColorCode.darkBlueColor,
                            fontSize: 130,
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(bottom: 23),
                            child: customTextView(
                              textAlign: TextAlign.end,
                              text:
                              "Erstellen dein Lebenslauf",
                              fontWeight: FontWeight.w600,
                              textColor:
                              ColorCode.darkBlueColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],))




                ],
              ),
            ),
          ],),
        ),
        ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 50.h,

              ///Background Decoration
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                      ColorCode.navyBlueColor,
                    ],
                  )),

              child: Container(),
            )),

        /// Second end.............................


        Padding(
          padding: const EdgeInsets.only(left: 480.0),
          child: CustomSVGImage(
              width: 220,
              height: 145,
              path: ImagesPath.lineTwoImage),
        ),



        /// third step.............................
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [


                Padding(
                  padding:const  EdgeInsets.only(
                    // top: 80,
                    // right: 260,
                    left: 365,
                  ),
                  child: Container(
                    height: 156,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.end,
                      // mainAxisSize: MainAxisSize.max,
                      children: [

                        Container(
                          width: 208,
                          height: 208,
                          decoration: BoxDecoration(
                            color:
                            ColorCode.circleBackgroundColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: customTextView(
                              textAlign: TextAlign.end,
                              text: "3.",
                              fontWeight: FontWeight.w600,
                              textColor:
                              ColorCode.darkBlueColor,
                              fontSize: 130,
                            ),
                          ),
                        ),

                        // customTextView(
                        //   textAlign: TextAlign.start,
                        //   text:
                        //   "Erstellen dein Lebenslauf",
                        //   fontWeight: FontWeight.w600,
                        //   textColor:
                        //   ColorCode.darkBlueColor,
                        //   fontSize: 15,
                        // ),

                        Padding(
                          padding:
                          EdgeInsets.only(bottom: 18),
                          child: customTextView(
                            textAlign: TextAlign.end,
                            text:
                            "Erstellen dein Lebenslauf",
                            fontWeight: FontWeight.w600,
                            textColor:
                            ColorCode.darkBlueColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                ///step1 image
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: const Center(
                    child: CustomSVGImage(
                        width: 220,
                        height: 145,
                        path: ImagesPath.loginThirdImage),
                  ),
                ),
              ],
            ),
          ],
        ),

        /// third end.............................




        /// third step.............................
        /*Stack(
          children: [
            Positioned(
              top: 0,
              left: -54,
              child: Container(
                width: 303.w,
                height: 303.h,
                decoration: BoxDecoration(
                  color:
                  ColorCode.circleBackgroundColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.only(
                right: 7.w,
                left: 54.w,
              ),
              child: Column(
                children: [
                  Container(
                    height: 156,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                      CrossAxisAlignment.end,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        customTextView(
                          textAlign: TextAlign.end,
                          text: "3.",
                          fontWeight: FontWeight.w600,
                          textColor:
                          ColorCode.darkBlueColor,
                          fontSize: 130,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(bottom: 25.h),
                          child: customTextView(
                              textAlign: TextAlign.start,
                              text:
                              "Mit nur einem Klick\n bewerben",
                              fontWeight: FontWeight.w600,
                              textColor:
                              ColorCode.darkBlueColor,
                              fontSize: 15,
                              maxLines: 2
                          ),
                        ),
                      ],
                    ),
                  ),


                  ///step1 image
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Center(
                      child: CustomSVGImage(
                          width: 220.w,
                          height: 145.h,
                          path: ImagesPath.loginThirdImage),
                    ),
                  ),
                ],
              ),
            )


          ],
        ),*/

        /// third end.............................


      ],
    );
  }
}

