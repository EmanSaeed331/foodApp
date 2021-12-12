import 'package:flutter/material.dart';
class ProfileView extends StatelessWidget {
  //const ProfileView({Key? key}) : super(key: key);
  List images = [
    'assets/images/food.jpg',
    'assets/images/food.jpg',
    'assets/images/food.jpg',
    'assets/images/food.jpg',
    'assets/images/food.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(


          children: [
        Padding(
        padding: const EdgeInsets.only(
            top: 100
        ),
        child: Center(
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage:AssetImage('assets/images/food.jpg'),
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text('Eman',
        style: TextStyle(
          fontFamily: 'Montserrat-Black',
          fontSize: 20,
        ),
      ),

          Container(
            //child: griddesign(),
          ),
        ],
      ),
    );
  }
  Widget griddesign (){
    return GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2/3,
            mainAxisSpacing: 2.3,
            crossAxisSpacing: 2.3,),
          itemCount: images.length,
          itemBuilder: (BuildContext ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Image.asset('assets/images/food.jpg')

              ),
            );
          });
  }
}
/*
* Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 100
            ),
            child: Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage:AssetImage('assets/images/food.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Eman',
            style: TextStyle(
              fontFamily: 'Montserrat-Black',
              fontSize: 20,
            ),
          ),

          griddesign(),
        // Container(
        //   child: GridView.builder(
        //       itemCount: 5 ,
        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 3,
        //         crossAxisSpacing: 2.0,
        //         mainAxisSpacing: 8.0 ,
        //       ),
        //       itemBuilder: (BuildContext context , index ){
        //         return Text('Hello');
        //
        //       }),
        // ),


        ],

      ),*/