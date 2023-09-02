import 'package:flutter/material.dart';

import '../pages/product_page.dart';

class HomePagePosts extends StatelessWidget {
  const HomePagePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
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
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Flash Sale",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 15),
          GridView.count(
              physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            children: [
              for(int i=1; i<9; i++)//keep in mind define i as int and give semicolun after each point in for
                Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F5F8),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      spreadRadius: 5,
                      blurRadius:5
                    ),
                  ]
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>ProductPage()));
                      },
                      child: Image.asset(
                        "assets/$i.png",
                        fit: BoxFit.cover,
                        height:130 ,
                        width: 120,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product Name",
                          style: TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: 20.0,
                          ),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Text("Rs.50",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              Text("/Kg",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.favorite_border,
                              color: Colors.orangeAccent,
                                size: 26,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],

          ),
        ],
      ),
    );
  }
}
