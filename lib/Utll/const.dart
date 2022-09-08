import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

var headingstyle=TextStyle(fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black);
var heading2style=TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black45);
var heading3style=TextStyle(fontSize:18,
    fontWeight: FontWeight.bold,
    color: Colors.orangeAccent);
var heading4style=TextStyle(fontSize:18,
    fontWeight: FontWeight.bold);

    var itemsprice=TextStyle(fontSize:18,
    fontWeight: FontWeight.bold,
    color: Colors.blue);
var catstyle=TextStyle(fontSize:15,
    color: Colors.black45);
var containerdecoration= new BoxDecoration(
  color:Colors.white,
  borderRadius:BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Colors.white,
      blurRadius:1.0, // soften the shadow
      spreadRadius: 1.0, //extend the shadow

    )
  ],
);

var backgroundcolor=Color(0xfff7f7f7);

Widget divider= SizedBox(height:20,);
Widget divider2= SizedBox(width:20,);