import 'package:flutter/material.dart';
import 'package:waiterorder/Model/cart_model.dart';

import '../../../../Utll/const.dart';

class cartdetailedscreen extends StatefulWidget {
  String tableno;

  cartdetailedscreen(this.tableno);


  @override
  _cartdetailedscreenState createState() => _cartdetailedscreenState();
}

class _cartdetailedscreenState extends State<cartdetailedscreen> {

  List<cartmodel>itemlist=[cartmodel("1","asda","fernos", "10", "2"),cartmodel("1","asda","fernos", "10", "2"),cartmodel("1","asda","fernos", "10", "2")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundcolor,
body:SafeArea(
  child:Padding(
    padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
    child: Stack(
      children: [
        Column(
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
                        "Table No ${widget.tableno}",
                        style:headingstyle),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: itemlist.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0),
                    decoration: containerdecoration,
                    child: Column(
                      children: [
                        new ListTile(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   new MaterialPageRoute(builder: (context) => productlist()),
                              // );
                            },
isThreeLine:true,
                            subtitle: Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "\$${itemlist[index].price}",
                                style: itemsprice,
                              ),
                            ),
                            trailing: Container(
                              width:
                              MediaQuery.of(context).size.width * 0.25,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orangeAccent),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          int q = int.parse(itemlist[index].quantity
                                              .toString());

                                          if (q > 0) {
                                            q--;
                                            itemlist[index].quantity =
                                                q.toString();
                                          }
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 16,
                                      )),
                                  Container(
                                    margin:
                                    EdgeInsets.symmetric(horizontal: 3),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3, vertical: 2),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(3),
                                        color: Colors.white),
                                    child: Text(
                                      itemlist[index].quantity!,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          int q = int.parse(itemlist[index]
                                              .quantity
                                              .toString());
                                          q++;
                                          itemlist[index].quantity !=
                                              q.toString();
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 16,
                                      )),
                                ],
                              ),
                            ),
                            title: Text(itemlist[index].name.toString())),
                        Container(
                          height: 1,
                          color: Colors.black12,
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
        Positioned(
            bottom:0,

            child: Container(
          color:Colors.white,
          width:MediaQuery.of(context).size.width*0.9,
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      children: [
                        Text("Total",style:heading2style,),
                        Text("\$12000",style:headingstyle,)

                      ],
                    ),
                    Container(
                        height: 40,
                        child: ElevatedButton(
                            child: Text('Place Order'),
                            onPressed: () {




                            },

                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent, // background
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(5),
                              ),
                            ))),
                  ],
                ),
              ),

        ))
      ],
    ),
  ),
),
    );
  }
}
