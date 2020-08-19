//import 'package:bookstore_app/Login_screen.dart';
import 'package:flutter/material.dart';
import 'Login_screen.dart';
import 'homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes =<String,WidgetBuilder>{
    LoginScreen.tag: (contex) => HomePage()
    };


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookStore Scaffold',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}


