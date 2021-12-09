import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/src/presentation/home/curved_nav_bar.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView.separated(
          itemBuilder: (context,index) =>_itemBuilder(),
          separatorBuilder: (context , index) => SizedBox(height: 0),
          itemCount: 8),

    );
  }

  Widget _itemBuilder(){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 10,
            ),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundImage:AssetImage('assets/images/food2.jpg'),
                ),
                  SizedBox(width: 20,),
                Text('Recipe '),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),

              child: Container(

                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Image.asset('assets/images/food.jpg',
                  fit:BoxFit.fitHeight,

                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
