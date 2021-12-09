import 'package:flutter/material.dart';
import 'package:foodapp/src/presentation/resources/colors_manger.dart';
class ImageCaptureView extends StatelessWidget {
  const ImageCaptureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Post',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 138, 120, 1),
                  ),
                ),
                SizedBox(height: 10),
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    // _imageFile != null ?
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            width: MediaQuery.of(context).size.width - 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            GestureDetector(
                              onTap: () {
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 300,

                                child: Image.asset(
                                  'assets/images/post.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],


                ),
                Container(
                  child: TextField(
                    onChanged: (String value) {
                    },
                    decoration: InputDecoration(
                      labelText: 'Add a Title',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,

                    decoration: InputDecoration(
                      labelText: 'Write a caption',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),


              ],
            ),
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorsManger.primaryColor,
                  ),
                  child: FlatButton(
                    onPressed: () {
                    },
                    child: Center(
                      child: Text('Post',
                        style: TextStyle(
                          color: ColorsManger.whiteColor,
                          fontSize: 20,

                        ),
                      ),
                    ),
                  ),
                ),

              ]),
        ),
      ),
    ));
  }
}