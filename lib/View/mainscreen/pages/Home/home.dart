import 'package:flutter/material.dart';
import 'package:waiterorder/Utll/const.dart';
import 'package:waiterorder/View/mainscreen/pages/Home/menu.dart';
import 'package:waiterorder/View/mainscreen/pages/cart/cartscreen.dart';

import 'Table_detail.dart';
import 'book_table.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:backgroundcolor,
        appBar: AppBar(
          backgroundColor:backgroundcolor,

          elevation: 0,
          actions: [
            GestureDetector(
              onTap:(){
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => cartscreen()),
                );
              },
              child: Icon(
                Icons.shopping_cart,
                color: Colors.orangeAccent,
                size: 25,
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
          title: Text(
            "Tables",
            style:headingstyle,
          )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Container(
                  decoration: containerdecoration,
                  width: MediaQuery.of(context).size.width* 0.9,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search Orders"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1,
                    children: [
                      GestureDetector(
                        onTap:(){
    Navigator.push(
    context,
    new MaterialPageRoute(builder: (context) => Menuscreen()),
    );},

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text(
                                  "132",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  "OPEN",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => book_table()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text(
                                    "12",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "ClOSED",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => Menuscreen()),
                          );},

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text(
                                  "13",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  "OPEN",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => book_table()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius:
                              BorderRadius.all(Radius.circular(6)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text(
                                    "15",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "ClOSED",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => Menuscreen()),
                          );},

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text(
                                  "112",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  "OPEN",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => book_table()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius:
                              BorderRadius.all(Radius.circular(6)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text(
                                    "132",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "ClOSED",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
