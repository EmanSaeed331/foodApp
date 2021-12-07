import 'package:flutter/material.dart';

class ColorsManger {

  static final  Color   primaryColor = HexColor.fromHex("#ff7d76");
  static final  Color   pinkColor    = HexColor.fromHex("#ff4a70");
  static final  Color   whiteColor   = HexColor.fromHex("#fafafa");

}
extension HexColor on Color {
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#', '');
    if(hexColorString.length==6){
      hexColorString= 'FF'+hexColorString;

    }
    /*radix convert String to int
    * the output of int parsing is 255
    * */
    return Color(int.parse(hexColorString,radix: 16));
  }
}