import 'package:flutter/material.dart';
import 'package:foodapp/src/presentation/resources/colors_manger.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(80),
              child: Text(
                'Food Lab',
                style: TextStyle(
                    color: ColorsManger.whiteColor,
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                ),
              ),
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorsManger.whiteColor,
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text('Explore',

                  style: TextStyle(
                    color: ColorsManger.primaryColor,
                    fontSize: 25,

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
