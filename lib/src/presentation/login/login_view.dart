import 'package:flutter/material.dart';
import 'package:foodapp/src/presentation/resources/colors_manger.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorsManger.whiteColor,
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration:InputDecoration(
                  hintStyle:TextStyle(
                    color: ColorsManger.primaryColor,
                  ),
                  labelText: 'Email',

                  icon:Padding(
                    padding: const EdgeInsets.only(
                      top:12,
                      left: 12,
                      bottom: 12,
                      right: 12,
                    ),
                    child: Icon(Icons.email , color: ColorsManger.primaryColor,),
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),

                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorsManger.whiteColor,
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration:InputDecoration(
                  labelText: 'Password',
                 hintStyle: TextStyle( color: ColorsManger.primaryColor,),


                  icon:Padding(
                      padding: const EdgeInsets.only(
                        top:12,
                        left: 12,
                        bottom: 12,
                        right: 12,

                      ),
                      child: Icon(Icons.email , color:ColorsManger.primaryColor),
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                ) ,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorsManger.whiteColor,
              ),
              child: FlatButton(
                onPressed: () {
                },
                child: Text('Log in ',
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
