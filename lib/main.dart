import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobile_web/core/responsive.dart';
import 'package:flutter_mobile_web/ui/login_main_page/LoginMainPage_view_model.dart';
import 'package:flutter_mobile_web/ui/login_main_page/login_main_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import 'core/constants/colors.dart';

Logger logger = Logger();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   // Size size=MediaQuery.of(context).size;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: ColorCode.whiteColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: ColorCode.whiteColor,
        systemNavigationBarIconBrightness: Brightness.dark));

    ///for portrait mode only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);



    return ScreenUtilInit(
         designSize: const Size(414, 896),
        // designSize: size.width >= 850 ? const Size(1920, 2516) : const Size(360, 640),
        // useInheritedMediaQuery: true,
        builder: (context, child) => MultiProvider(
              providers: [
                ChangeNotifierProvider(
                    create: (context) => LoginMainPageViewModel())
              ],
              child: const GetMaterialApp(
                debugShowCheckedModeBanner: false,
                home: Responsive(mobile: LoginMainPage(), desktop: LoginMainPage()),
              ),
            ));
  }
}
