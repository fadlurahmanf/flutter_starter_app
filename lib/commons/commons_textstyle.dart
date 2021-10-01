import 'package:flutter/material.dart';
import 'package:flutter_starter_app/constant/constant_fonts.dart';

class CommonsTextStyle{
  static TextStyle get body18RegBlack{
    return TextStyle(fontFamily: ConstantFont.metropolis,
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: Colors.black
    );
  }
}