import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/src/presentation/splash/splash_view.dart';
import 'package:get/get.dart';
class MyApp extends StatelessWidget {
  MyApp._instance(); // named private constructor
  static final MyApp instance = MyApp._instance();
  factory MyApp () => instance;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashView(),
    );
  }
}