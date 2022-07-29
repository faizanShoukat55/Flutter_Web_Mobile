import 'dart:math';

import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_mobile_web/core/assets/images.dart';
import 'package:flutter_mobile_web/core/constants/colors.dart';
import 'package:flutter_mobile_web/core/constants/constants.dart';
import 'package:flutter_mobile_web/core/custom_widgets/custom_bottom_radius_container.dart';
import 'package:flutter_mobile_web/core/custom_widgets/custom_svg_icon.dart';
import 'package:flutter_mobile_web/core/custom_widgets/custom_top_radius_container.dart';
import 'package:flutter_mobile_web/core/custom_widgets/rounded_button.dart';
import 'package:flutter_mobile_web/ui/login_main_page/LoginMainPage_view_model.dart';
import 'package:flutter_mobile_web/ui/login_main_page/tabs/tab1/login_tab1_page.dart';
import 'package:flutter_mobile_web/ui/login_main_page/tabs/tab2/login_tab2_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:provider/provider.dart';

import '../../core/constants/widgets.dart';
import '../../core/custom_widgets/image_container.dart';

class LoginMainPage extends StatelessWidget {
  const LoginMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 850;

    return ChangeNotifierProvider(
        create: (context) => LoginMainPageViewModel(),
        child: Consumer<LoginMainPageViewModel>(
            builder: (context, model, child) => Scaffold(
                  body: SafeArea(
                      child: SizedBox(
                    height: size.height,
                    width: size.width,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            ///top linear line
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [
                                  ColorCode.lightBlueColor,
                                  ColorCode.blueColor,
                                  ColorCode.blueColor,
                                  ColorCode.blueColor,
                                  ColorCode.blueColor,
                                ],
                              )),
                              height: 5.h,
                            ),

                            ///login curved Background
                            CustomBottomRadiusContainer(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: 26.h, right: 17.w),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: customTextView(
                                      text: "Login",
                                      fontWeight: FontWeight.w600,
                                      textColor: ColorCode.lightBlueColor,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),

                        ///Inner Complete View expect top and bottom curved background
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                /// first wave clipper path
                                ClipPath(
                                  clipper: WaveClipperTwo(),
                                  child: Container(
                                    width: size.width,

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
                                    child: isMobile
                                        ? mobileTopLayout()
                                        : webTopLayout(size),
                                  ),
                                ),

                                customFixedHeightSizedBox(27.h),
                                Center(
                                  child: CustomSlidingSegmentedControl<int>(
                                    controller: model.controller,
                                    fromMax: true,
                                    height: 30,
                                    innerPadding: EdgeInsets.zero,
                                    children: model.children,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: 1,
                                    thumbDecoration: BoxDecoration(
                                      borderRadius: model.dynamicBorder,
                                      gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment(0.7, 0.0),
                                        colors: [
                                          Color(0xFF3182CE),
                                          Color(0xFF3182CE),
                                          Color(0xFF3182CE)
                                          // Color(0xff5851db),
                                          // Color(0xffe1306c),
                                        ],
                                      ),
                                    ),
                                    onValueChanged: (int value) {
                                      model.onSelectionChange(value);
                                      model.onSelectionChangeBorder(value);
                                    },
                                  ),
                                ),

                                customFixedHeightSizedBox(18.h),

                                model.pages[model.currentSelection]
                                // const LoginTab2Page(),
                              ],
                            ),
                          ),
                        ),
                        // const Expanded(child:  ),

                        ///login curved Background
                        isMobile ? CustomTopRadiusContainer(
                            child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.w, right: 17.w),
                            child: RoundedButton(
                              text: 'Kostelos Registrieren',
                              textColor: ColorCode.whiteColor,
                              width: size.width,
                            ),
                          ),
                        )) : Container(),
                      ],
                    ),
                  )),
                )));
  }

  Widget mobileTopLayout() {
    return Column(
      children: [
        customFixedHeightSizedBox(18.h),
        customTextView(
            text: "Dein Job\n Website",
            fontWeight: FontWeight.w600,
            textColor: ColorCode.darkBlueColor,
            fontSize: 42,
            maxLines: 2),

        ///Job svg image
        CustomSVGImage(
            // width: double.infinity,
            height: 404.h,
            path: ImagesPath.loginJobImage),

        customFixedHeightSizedBox(30.h),

        customFixedHeightSizedBox(18.h),
      ],
    );
  }

  Widget webTopLayout(Size size) {
    return Column(
      children: [

        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customFixedHeightSizedBox(201),
                  customTextView(
                      text: "Dein Job\n Website",
                      fontWeight: FontWeight.w600,
                      textColor: ColorCode.darkBlueColor,
                      fontSize: 42,
                      maxLines: 2),
                  customFixedHeightSizedBox(50),
                  Padding(
                    padding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: RoundedButton(
                      text: 'Kostelos Registrieren',
                      textColor: ColorCode.whiteColor,
                      width: 320,
                    ),
                  ),
                  customFixedHeightSizedBox(201),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 420,
                        height: 420,
                        decoration: BoxDecoration(
                          color: ColorCode.whiteColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: CircleAvatar(
                            // child: CustomSVGImage(
                            //       width: 450,
                            //       height: 450,
                            //       path: ImagesPath.loginJobImage),
                            backgroundImage: AssetImage(ImagesPath.loginAgreementImage),
                            backgroundColor: ColorCode.whiteColor,
                            radius: 420,
                          ),
                        )),
                  ],
                )
                )
          ],
    ),
      ],
    );
  }
}
