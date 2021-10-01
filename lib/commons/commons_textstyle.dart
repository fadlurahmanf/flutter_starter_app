import 'package:flutter/material.dart';
import 'package:flutter_starter_app/constant/constant_color.dart';
import 'package:flutter_starter_app/constant/constant_fonts.dart';


//TODO ADD FONT STYLE HERE
class CommonsTextStyle{
  static TextStyle get body18RegBlackGrey{
    return TextStyle(fontFamily: ConstantFont.metropolis,
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: ConstantColor.blackGrey
    );
  }
}