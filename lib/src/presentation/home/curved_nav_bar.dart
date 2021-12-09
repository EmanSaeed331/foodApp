import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/src/presentation/home/home_view.dart';
import 'package:foodapp/src/presentation/home/image_capture_view.dart';
import 'package:foodapp/src/presentation/home/profile_view.dart';
import 'package:foodapp/src/presentation/resources/colors_manger.dart';
class CurvedNavBar extends StatefulWidget {

  int selectedIndex;
  CurvedNavBar({required this.selectedIndex});

  @override
  State<CurvedNavBar> createState() => _CurvedNavBarState();

}

class _CurvedNavBarState extends State<CurvedNavBar> {
  @override
  Widget build(BuildContext context) {

    List<Widget> _items = [
      HomeView(),
      ImageCaptureView(),
      ProfileView(),

    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey,
      bottomNavigationBar: CurvedNavigationBar(
        color: ColorsManger.whiteColor,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.white,
        index: widget.selectedIndex,
        onTap: (index){
          setState(() {
            debugPrint("Current Index is $index");
             widget.selectedIndex = index;
          });
        },
        items: <Widget>[
          Icon(Icons.home , size :26),
          Icon(Icons.add_box , size :26),
          Icon(Icons.account_circle, size: 26),
        ],
      ),
      body: _items[widget.selectedIndex],

    );
  }
}
