import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 12.0),
      decoration: BoxDecoration(
        color:Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 60,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Icon(CupertinoIcons.cart_fill,
              color: Colors.white,
                size: 35,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 60,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Text("Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                fontSize: 23.0
              ),
              )
            ),
          )

        ],
      ),
    );
  }
}
