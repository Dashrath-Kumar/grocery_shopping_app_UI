import 'package:flutter/material.dart';

import '../widget/productbottombar.dart';


class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255,255, 230,177),
            width: double.infinity,
            height: 390,
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(//this is at top left
                         onTap: (){
                            Navigator.pop(context);
                          },
                        child: Icon(
                          Icons.arrow_back,size: 28,
                        ),
                      ),
                      Container(//this will be topright
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 8,
                            )
                          ]
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.orangeAccent,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset("assets/2.png",
                height: 280,
                width: 280,
                  fit:BoxFit.contain
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 8,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Product Name:StrawBerry",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                  fontSize: 17.0
                ),
                ),
                Column(
                  children: [
                    Text("Rs.50",style: TextStyle(
                      color: Colors.orangeAccent,fontSize: 20.0
                    ),
                    ),
                    SizedBox(height: 5,),
                    Text("400 Gram",style: TextStyle(
                        color: Colors.black,fontSize: 15.0
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 8,
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Product Details",style: TextStyle(color: Colors.black,
                 fontSize: 17.0,fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 8,),
                Text("Extremely juicy and syrupy, these conical heart shaped"
                    " fruits have seeds on the skin that give them a unique"
                    " texture. With a blend of sweet-tart flavour, these "
                    "are everyone's favourite berries.",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Only for You",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 5,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=1;i<9;i++)//to 9 other poduct in singlechildscrollview at bottom
                      Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 8,bottom: 8,left: 20.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(250, 250, 230, 177),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 5,
                          ),
                        ]
                      ),
                      child: Image.asset("assets/$i.png",
                      fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: ProductBottomBar(),
    );
  }
}
