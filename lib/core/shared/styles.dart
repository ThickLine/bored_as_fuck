import 'package:flutter/material.dart';

// font
const String fontFamily = "Lato";

// colors
const Color kcPrimaryColor = Color(0xff2CB9B0);
const Color kcBlackColor = Color(0xff000000);
const Color kcWhiteColor = Color(0xffFFFFFF);
const Color kcNavyBlueColor = Color(0xff185083);
const Color kcBackgroundColor = Color(0xffF6F5F5);
const Color kcPlaceholderColor = Color(0xffBFBFBF);
const Color kcBlackBackgroundColor = Color.fromRGBO(12, 13, 52, 0.9);
const Color kcLightBackgroundColor = Color(0xff2CB9B0);

const Color kcAccentColor = Color.fromRGBO(63, 90, 166, 1);
const Color kcErrorColor = Color(0xffB00020);
const Color kcInfoColor = Color(0xff5FB3CE);
const Color kcDarkBackgroundColor = Color(0xff0C0D34);

// TextStyle
const TextStyle ktsDisplayText = TextStyle(
    color: kcWhiteColor,
    fontSize: kDisplayTextSize,
    fontFamily: fontFamily,
    fontWeight: fontWeightBold);

const TextStyle ktsTitleText = TextStyle(
    color: kcBlackColor, fontSize: kTitleTextSize, fontFamily: fontFamily);
const TextStyle ktsLableText = TextStyle(
    color: kcBlackColor, fontSize: kLabelTextSize, fontFamily: fontFamily);

const TextStyle ktsDescriptionText = TextStyle(
    color: kcBlackColor,
    fontSize: kDescriptionTextSize,
    fontFamily: fontFamily);

const TextStyle ktsLabelSmallText = TextStyle(
    color: kcBlackColor, fontSize: kButtonTextSize, fontFamily: fontFamily);

const TextStyle ktsCaptionText = TextStyle(
    color: kcAccentColor, fontSize: kCaptionTextSize, fontFamily: fontFamily);

const TextStyle ktsButtonText = TextStyle(
    color: kcWhiteColor, fontSize: kButtonTextSize, fontFamily: fontFamily);
const TextStyle ktsButtonWhiteText = TextStyle(
    color: kcWhiteColor, fontSize: kButtonTextSize, fontFamily: fontFamily);

// Font Sizing
const double kDisplayTextSize = 80;
const double kTitleTextSize = 28;
const double kLabelTextSize = 18;
const double kDescriptionTextSize = 16;
const double kButtonTextSize = 15;
const double kCaptionTextSize = 12;

// Font weight
const FontWeight fontWeightBold = FontWeight.w600;
