import 'package:flutter/material.dart';

import '../pages/order_page.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({super.key});

  @override
  Widget build(BuildContext context){
  return Container(
    height: 130,
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      children: [
        Padding(
            padding:EdgeInsets.only(left: 10.0,top: 10.0),
          child: Row(
            children: [
              Icon(Icons.discount,color: Colors.orangeAccent,
              ),
              Text("Use Promo Code",
                style:TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(162, 0, 0, 0)
                ),
              )
            ],
          ),
        ),
        Divider(height: 25,thickness: 1,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total:",
                style: TextStyle(
                  fontSize: 23.0,
                    color: Color.fromARGB(162, 0, 0, 0),
                  fontWeight: FontWeight.bold
                ),
                ),
                Text("Rs.1100",
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>OrderPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Check Out",style: TextStyle(
                  fontSize: 18,fontWeight:FontWeight.bold,
                  color:Colors.white
                ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
  }
}




