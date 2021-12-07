import 'package:flutter/material.dart';
import 'package:foodapp/src/presentation/resources/colors_manger.dart';
import 'package:foodapp/src/presentation/resources/value_manger.dart';

ThemeData getApplicationThem(){
  return ThemeData(
      backgroundColor: ColorsManger.primaryColor,

    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorsManger.whiteColor,
      buttonColor: ColorsManger.primaryColor,
      //splashColor: ColorsManger.,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:ElevatedButton.styleFrom(
        //textStyle: getRegularStyle(color:ColorsManger.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
  );
}