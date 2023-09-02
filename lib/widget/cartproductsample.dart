import 'package:flutter/material.dart';

class CartProductSample extends StatefulWidget{
  const CartProductSample({super.key});

  @override
  State<CartProductSample> createState()=>_CartProductSampleState();
}
class _CartProductSampleState extends State<CartProductSample>{
  bool checkedValue=false;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        for(int i=1;i<4;i++)
        Container(
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.orange,
                    value:checkedValue,
                    onChanged:(newValue){
                    setState(() {
                      checkedValue=newValue!;
                    });
                    }
                ),
                Container(
                  height: 70,
                  width: 70,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255,255,230,177),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                      )
                    ]
                  ),
                  child: Image.asset("assets/$i.png",
                  fit: BoxFit.contain,
                  ),
                ),
                Padding(
                    padding:EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text("Product Name",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0)
                        ),
                      ),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("Rs.500",
                          style: TextStyle(
                            fontSize: 17,fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text("/5Kg",
                          style: TextStyle(fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.delete,color: Colors.red,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("-",
                          style: TextStyle(fontSize: 25,color: Colors.white
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("1",
                            style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.bold,
                              color: Color.fromARGB(162, 0, 0, 0)
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("+",
                            style: TextStyle(fontSize: 25,color: Colors.white
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Divider(thickness: 1,)
          ],
        ),
        ),
      ],
    );
  }
}



