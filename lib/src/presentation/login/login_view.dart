import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/src/presentation/registeration/registeration_view.dart';
import 'package:foodapp/src/presentation/resources/colors_manger.dart';
import 'package:foodapp/src/presentation/resources/font_manger.dart';
import 'package:get/get.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 60,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorsManger.whiteColor,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,

                  decoration:InputDecoration(
                    labelStyle:TextStyle(
                        color:ColorsManger.primaryColor
                    ) ,

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
                height: 15,
              ),
              Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
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
                        child: Icon(Icons.lock , color:ColorsManger.primaryColor),
                      ),
                      labelStyle:TextStyle(
                        color:ColorsManger.primaryColor
                      ) ,
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
                height: 60,
              ),

              Container(
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorsManger.whiteColor,
                ),
                child: FlatButton(
                  onPressed: () {
                  },
                  child: Center(
                    child: Text('Log in ',
                      style: TextStyle(
                        color: ColorsManger.primaryColor,
                        fontSize: 20,

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a registerd user ? ',
                      style: TextStyle(
                        color: ColorsManger.whiteColor,
                        fontSize: 16
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(RegisterationView());
                      },
                      child: Text('Sign Up here ',
                        style: TextStyle(
                          color: ColorsManger.whiteColor,
                          fontSize: 14,
                          fontFamily: 'Montserrat-Black'
                        ),
                      ),
                    ),

                  ],
                ),
              ) ,
            ],
          ),
        ),
      ),
    );
  }
}
