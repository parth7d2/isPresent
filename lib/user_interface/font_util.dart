import 'package:flutter/material.dart';
import 'package:now_won/user_interface/custom_colors.dart';

TextStyle LargeTitel({Color tc = CustomColors.primary_, double size = 40}) {
  return TextStyle(fontFamily: 'FontBold', fontSize: size, color: tc);
}

TextStyle Headline({Color tc = CustomColors.primary_, double size = 23}) {
  return TextStyle(fontFamily: 'FontMedium', fontSize: size, color: tc);
}

TextStyle Body({Color tc = CustomColors.primary_, double size = 23}) {
  return TextStyle(fontFamily: 'FontRegular', fontSize: size, color: tc);
}

TextStyle Subhead({Color tc = CustomColors.primary_, double size = 21}) {
  return TextStyle(fontFamily: 'FontRegular', fontSize: size, color: tc);
}

TextStyle Caption({Color tc = CustomColors.primary_, double size = 18}) {
  return TextStyle(fontFamily: 'FontRegular', fontSize: size, color: tc);
}

TextStyle CaptionBold({Color tc = CustomColors.primary_, double size = 18}) {
  return TextStyle(fontFamily: 'FontBold', fontSize: size, color: tc);
}