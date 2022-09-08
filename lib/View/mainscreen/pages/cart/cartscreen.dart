import 'package:flutter/material.dart';
import 'package:waiterorder/View/mainscreen/pages/cart/cartdetailscreen.dart';

import '../../../../Utll/const.dart';


class cartscreen extends StatefulWidget {
  const cartscreen({Key? key}) : super(key: key);

  @override
  _cartscreenState createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:backgroundcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:5.0,horizontal:0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Cart",
                            style:headingstyle),
                      ),
                    ],
                  ),
                ),
                //part one add customer
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 0),
                        decoration: containerdecoration,
                        child:ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(builder: (context) => cartdetailedscreen("12")),
                              );
                            },
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                            subtitle: Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "OrderID: 0001",

                              ),
                            ),
                            trailing:Icon(Icons.arrow_forward_ios)
                            ,
                            title: Text("Table No 23")),

                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
