import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/pages/cart_page.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(Icons.home,color: Colors.orangeAccent,
                size: 25,
              ),
              Text("Home",
              style: TextStyle(color: Colors.orange,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.search,color: Colors.orangeAccent,
                size: 25,
              ),
              Text("Explore",
                style: TextStyle(color: Colors.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>CartPage()));
            },
            child: Column(
              children: [
                Icon(CupertinoIcons.cart,color: Colors.orangeAccent,
                  size: 25,
                ),
                Text("My cart",
                  style: TextStyle(color: Colors.orange,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Icon(Icons.person,color: Colors.orangeAccent,
                size: 25,
              ),
              Text("Account",
                style: TextStyle(color: Colors.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
