import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waiterorder/Model/cart_model.dart';

import '../../../../Utll/const.dart';

class orderdetailscren extends StatefulWidget {
  String tableno;

  orderdetailscren(this.tableno);


  @override
  _orderdetailscrenState createState() => _orderdetailscrenState();
}

class _orderdetailscrenState extends State<orderdetailscren> {


  List<String>customername=["Rizwan","khan"];
  List<cartmodel>itemlist=[cartmodel("1","asda","fernos", "10", "2"),cartmodel("1","asda","fernos", "10", "2"),cartmodel("1","asda","fernos", "10", "2")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundcolor,
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
          child: Container(
            height:MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
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
                                  "Order Details",
                                  style:headingstyle),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding:EdgeInsets.all(12),
                        decoration:containerdecoration,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Table No:"),
                            Text("124:"),
                          ],
                        ),
                      ),
                      SizedBox(height:20,),
                      Text("Customer Details",style:heading4style,),
                      SizedBox(height:10,),

                      Container(
                        padding:EdgeInsets.all(12),
                        decoration:containerdecoration,
                        child:ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: customername.length,
                              itemBuilder: (BuildContext ctxt, int index) {
                                return ListTile(
                                title:Text(customername[index]),
                                );}
                      )),

                      SizedBox(height:20,),
                      Text("Products",style:heading4style,),
                      SizedBox(height:10,),

                      Container(
                          padding:EdgeInsets.all(12),
                          decoration:containerdecoration,
                          child:ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: itemlist.length,
                              itemBuilder: (BuildContext ctxt, int index) {
                                return ListTile(
                                  title:Text(itemlist[index].name.toString()),
                                  trailing:Text("${itemlist[index].quantity.toString()} * ${itemlist[index].price.toString()}"),
                                );}
                          )),
                      SizedBox(height:10,),

                    ],
                  ),
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
                                    child: Text('Order Completed'),
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
      ),
    );
  }
}
