import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/src/app/app.dart';
import 'package:foodapp/src/presentation/resources/colors_manger.dart';

void main() async{
 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: ColorsManger.primaryColor, // status bar color
 ));

 WidgetsFlutterBinding.ensureInitialized( );
  await Firebase.initializeApp;

  runApp(MyApp());
}


