import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget{
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child:Icon(Icons.arrow_back,
              size: 28,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                alignment: Alignment.center,
                child: Text("Fill order Details",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(162, 0, 0, 0),
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "First Name",
                    hintStyle:TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Last Name",
                    hintStyle:TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Mobile Number",
                    hintStyle:TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle:TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Address",
                    hintStyle:TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "City",
                    hintStyle:TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Postal/Zip code",
                    hintStyle:TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: (){},
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20.0),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}

