import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shopping_app/pages/cart_page.dart';
import 'package:grocery_shopping_app/pages/home_page.dart';
import 'package:grocery_shopping_app/pages/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {//require to make stateful widget
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //initstate for immersive sticky UI
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:Color(0xFFF7F5F8),
      ),
      home:MyHomePage(),
    );
  }
}


