import 'package:flutter/material.dart';

import '../widget/homebottombar.dart';
import '../widget/homepageposts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for(int i=1;i<4;i++) //to scroll image horizotally
                Image.asset("assets/deal$i.jpg",//written $i to show the 3 images hidden behind
                height: 250.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                )
              ]
            ),
            child: GridView.count(
                crossAxisCount:4,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for(int i=1;i<9;i++) //to show 9 images in grid
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 255, 230, 177),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ]
                  ),
                  child: Image.asset("assets/$i.png",//written $i to show all 9 image from 1 to 9
                  fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          HomePagePosts(),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
