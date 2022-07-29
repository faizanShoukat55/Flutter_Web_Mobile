import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_widgets/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Text customTextView(
    {required String text,
      required FontWeight fontWeight,
      required Color textColor,
      required double fontSize,
      int maxLines=2,
      double wordSpacing = 1,
      TextAlign? textAlign = TextAlign.start}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: maxLines,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        fontFamily: 'Poppins',
        wordSpacing: wordSpacing,
      ),
    ),

  );
}

Text textView8(
    {required String text,
    FontWeight fontWeight = FontWeight.w400,
    required Color textColor,
    double wordSpacing = 1,
    TextAlign? textAlign = TextAlign.start}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: 1,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 8.sp,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        fontFamily: 'Poppins',
        wordSpacing: wordSpacing,
      ),
    ),

  );
}

Text textView10(
    {required String text,
    FontWeight fontWeight = FontWeight.w400,
    required Color textColor,
    double wordSpacing = 1,
    TextAlign? textAlign = TextAlign.start}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: 1,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 10.sp,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        wordSpacing: wordSpacing,
      ),
    ),
    // style: titleTextStyle.copyWith(
    //   fontSize: 10.sp,
    //   fontWeight: fontWeight,
    //   color: textColor,
    //   letterSpacing: 1,
    //   fontFamily: 'Poppins',
    //   wordSpacing: wordSpacing,
    // ),
  );
}

Text textView12(
    {required String text,
    FontWeight fontWeight = FontWeight.w400,
    required Color textColor,
    double wordSpacing = 1,
    TextAlign? textAlign = TextAlign.start}) {
  return Text(
    text,
    maxLines: 1,
    textAlign: textAlign,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        wordSpacing: wordSpacing,
      ),
    ),
    // style: titleTextStyle.copyWith(
    //   fontSize: 12.sp,
    //   fontWeight: fontWeight,
    //   color: textColor,
    //   letterSpacing: 1,
    //   fontFamily: 'Poppins',
    //   wordSpacing: wordSpacing,
    // ),
  );
}


Text textView14(
    {required String text,
    FontWeight fontWeight = FontWeight.w400,
    required Color textColor,
    double wordSpacing = 1,
    TextAlign? textAlign = TextAlign.start}) {
  return Text(
    text,
    maxLines: 2,
    textAlign: textAlign,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        wordSpacing: wordSpacing,
      ),
    ),
    // style: titleTextStyle.copyWith(
    //   overflow: TextOverflow.ellipsis,
    //   fontSize: 14.sp,
    //   fontWeight: fontWeight,
    //   color: textColor,
    //   letterSpacing: 1,
    //   fontFamily: 'Poppins',
    //   wordSpacing: wordSpacing,
    // ),
  );
}

Text textView16(
    {int maxLine = 1,
    required String text,
    FontWeight fontWeight = FontWeight.w400,
    required Color textColor,
    double wordSpacing = 1,
    TextAlign? textAlign = TextAlign.start}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: 2,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        wordSpacing: wordSpacing,
      ),
    ),
    // style: titleTextStyle.copyWith(
    //   fontSize: 16.sp,
    //   fontWeight: fontWeight,
    //   color: textColor,
    //   letterSpacing: 1,
    //   fontFamily: 'Poppins',
    //   wordSpacing: wordSpacing,
    // ),
  );
}

Text textView18(
    {required String text,
    FontWeight fontWeight = FontWeight.w400,
    required Color textColor,
    double wordSpacing = 1,
    TextAlign? textAlign = TextAlign.start}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: 2,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 18.sp,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        wordSpacing: wordSpacing,
      ),
    ),
    // style: titleTextStyle.copyWith(
    //   fontSize: 18.sp,
    //   fontWeight: fontWeight,
    //   color: textColor,
    //   letterSpacing: 1,
    //   fontFamily: 'Poppins',
    //   wordSpacing: wordSpacing,
    // ),
  );
}

Text textView20(
    {required String text,
    FontWeight fontWeight = FontWeight.w400,
    required Color textColor,
    double wordSpacing = 1,
    TextAlign? textAlign = TextAlign.start,}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: 2,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        wordSpacing: wordSpacing,
      ),
    ),
    // style: titleTextStyle.copyWith(
    //   fontSize: 20.sp,
    //   fontWeight: fontWeight,
    //   color: textColor,
    //   letterSpacing: 1,
    //   fontFamily: 'Poppins',
    //   wordSpacing: wordSpacing,
    // ),
  );
}

Text textView24(
    {required String text,
    FontWeight fontWeight = FontWeight.w600,
    required Color textColor,
    double wordSpacing = 1,
    TextAlign? textAlign = TextAlign.start}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: 2,
    style: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 24.sp,
        fontWeight: fontWeight,
        color: textColor,
        letterSpacing: 1,
        wordSpacing: wordSpacing,
      ),
    ),
    // style: titleTextStyle.copyWith(
    //   fontSize: 24.sp,
    //   fontWeight: fontWeight,
    //   color: textColor,
    //   letterSpacing: 1,
    //   fontFamily: 'Poppins',
    //   wordSpacing: wordSpacing,
    // ),
  );
}
