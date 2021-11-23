import 'package:flutter/cupertino.dart';

class Styles {
  static const textSizeDefault = 22.0;
  static const textSizeLarge = 28.0;
  static const textSizeSmall = 18.0;
  static const textSizeTitle = 20.0;

  static const fontDefault = 'Saira';
  static const fontDefaultDecorative = 'Orbitron';

  static const colorDarkGray = Color(0xFF141E26);
  static const colorDarkGraySecondary = Color(0xFF233240);
  static const colorGraySecondary = Color(0xFFA6A6A6);
  static const colorGray = Color(0xFF364959);
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorLightGray = Color(0xFFF2F2F2);
  static const colorBlack = Color(0xFF000000);

  static const textDefaultDecorative = TextStyle(color: colorDarkGray, fontSize: textSizeDefault, fontFamily: fontDefaultDecorative);
  static const textLargeDecorative = TextStyle(color: colorDarkGray, fontSize: textSizeLarge, fontFamily: fontDefaultDecorative);
  static const textSmallDecorative = TextStyle(color: colorDarkGraySecondary, fontSize: textSizeSmall, fontFamily: fontDefaultDecorative);
  static const textTitleDecorative = TextStyle(color: colorLightGray, fontSize: textSizeTitle, fontFamily: fontDefaultDecorative);

  static const textDefault = TextStyle(color: colorDarkGray, fontSize: textSizeDefault, fontFamily: fontDefault);
  static const textLarge = TextStyle(color: colorDarkGray, fontSize: textSizeLarge, fontFamily: fontDefault);
  static const textSmall = TextStyle(color: colorDarkGraySecondary, fontSize: textSizeSmall, fontFamily: fontDefault);
  static const textTitle = TextStyle(color: colorLightGray, fontSize: textSizeTitle, fontFamily: fontDefault);


  static const insetsDefault = EdgeInsets.fromLTRB(8, 12, 8, 8);
}