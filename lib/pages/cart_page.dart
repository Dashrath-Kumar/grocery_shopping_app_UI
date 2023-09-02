import 'package:flutter/material.dart';

import '../widget/cartbottombar.dart';
import '../widget/cartproductsample.dart';


class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool checkedValue=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding:EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,
                  size: 25,
                  ),
                ),
                SizedBox(width: 15,),
                Text("My Cart",
                style: TextStyle(
                  color: Colors.orangeAccent,fontSize: 25.0
                ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.3),
                        spreadRadius: 1,
                        blurRadius: 1,
                      )
                    ]
                  ),
                  child: Icon(Icons.notifications,
                  color: Colors.orangeAccent,
                    size: 35.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            child: Column(
              children: [
                CheckboxListTile(
                    activeColor: Colors.orangeAccent,
                    title: Text("Select All items",
                      style: TextStyle(fontSize: 18.0,),
                    ),
                    value: checkedValue,
                    onChanged:(newVale){
                      setState(() {
                        checkedValue=newVale!;
                      });
                    },
                  controlAffinity: ListTileControlAffinity.leading,
                  //this above control.leading is for to put checkbox in from of text select all items
                  //bydefault it remain after the text
                ),
                Divider(height: 30,thickness: 1,),
                CartProductSample(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 8,
                )
              ]
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub-Total:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(162, 0, 0, 0)
                      ),
                    ),
                    Text("Rs.1000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(162, 0, 0, 0)
                      ),
                    ),
                  ],
                ),
                Divider(height: 20,thickness: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Fee:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(162, 0, 0, 0)
                      ),
                    ),
                    Text("Rs.200",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(162, 0, 0, 0)
                      ),
                    ),
                  ],
                ),
                Divider(height: 20,thickness: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(162, 0, 0, 0)
                      ),
                    ),
                    Text("- Rs.100",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(162, 0, 0, 0)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}
