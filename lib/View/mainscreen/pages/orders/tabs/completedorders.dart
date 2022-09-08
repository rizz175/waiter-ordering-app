import 'package:flutter/material.dart';

import '../../../../../Utll/const.dart';

class completedorders extends StatefulWidget {
  const completedorders({Key? key}) : super(key: key);

  @override
  _completedordersState createState() => _completedordersState();
}

class _completedordersState extends State<completedorders> {
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
                  // Navigator.push(
                  //   context,
                  //   new MaterialPageRoute(builder: (context) => productlist()),
                  // );
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
