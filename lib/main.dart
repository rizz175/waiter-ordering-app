import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'View/Authentication/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: '',
      theme: ThemeData(
        primaryColor:Colors.orangeAccent,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat', //3

        elevatedButtonTheme:  ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent,//change background color of button
              onPrimary: Colors.white,//change text color of button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            )),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget
{


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    startSplashScreen();


    super.initState();


  }
  startSplashScreen() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        new MaterialPageRoute(builder: (context) => login()),
      );

    });
  }


  @override
  Widget build(BuildContext context) {
   var size=MediaQuery.of(context).size;

    return Scaffold(

        backgroundColor:Colors.white,
        body:Center(
          child: Container(
                  width:size.width*0.4,height:size.width*0.4,

                  child:Image.asset("images/amorosa.png")



          ),
        )






    );

  }
}
