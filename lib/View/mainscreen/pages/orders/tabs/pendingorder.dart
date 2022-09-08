import 'package:flutter/material.dart';
import 'package:waiterorder/View/mainscreen/pages/orders/orderscreen.dart';

import '../../../../../Utll/const.dart';
class pendingorders extends StatefulWidget {
  const pendingorders({Key? key}) : super(key: key);

  @override
  _pendingordersState createState() => _pendingordersState();
}

class _pendingordersState extends State<pendingorders> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                        new MaterialPageRoute(builder: (context) => orderdetailscren("2")),
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
    ;
  }
}
