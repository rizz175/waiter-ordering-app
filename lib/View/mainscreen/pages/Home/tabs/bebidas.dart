import 'package:flutter/material.dart';

import '../../../../../Model/category.dart';
import '../../../../../Utll/const.dart';

class bebidas extends StatefulWidget {
  const bebidas({Key? key}) : super(key: key);

  @override
  _bebidasState createState() => _bebidasState();
}

class _bebidasState extends State<bebidas> {
  var customerList = ["asdsa", "asdsad", "sds", "asdsa", "asdsad", "sds"];


  List<category> refri = [
    category('COCA COLA', '0','12','2'),
    category('GUARANA', '0','12','2'),
  ];
  List<category> sucos = [
    category('SUCO LARANJA', '0','12','2'),
    category('SUCO UVA', '0','12','2'),
  ];
  List<category> diversos = [
    category('AGLI', '0','12','2'),
    category('H20', '0','12','2'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
        children: [
          ExpansionTile(
              title: Text(
                'REFRI',style:heading4style,
              )
              ,
              children: <Widget>[

                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: diversos.length,
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
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                                subtitle: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    "\$${ diversos[index].price}",
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
                                              int q = int.parse( diversos[index]
                                                  .quanitity
                                                  .toString());

                                              if (q > 0) {
                                                q--;
                                                diversos[index].quanitity =
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
                                          diversos[index].quanitity!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse( diversos[index]
                                                  .quanitity
                                                  .toString());
                                              q++;
                                              diversos[index].quanitity !=
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
                                title: Text( diversos[index].title.toString())),
                            Container(
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      );
                    })


              ]
          ),
          ExpansionTile(
              title: Text(
                'SUCOS',style:heading4style,
              )
              ,
              children: <Widget>[

                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: diversos.length,
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
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                                subtitle: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    "\$${ diversos[index].price}",
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
                                              int q = int.parse( diversos[index]
                                                  .quanitity
                                                  .toString());

                                              if (q > 0) {
                                                q--;
                                                diversos[index].quanitity =
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
                                          diversos[index].quanitity!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse( diversos[index]
                                                  .quanitity
                                                  .toString());
                                              q++;
                                              diversos[index].quanitity !=
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
                                title: Text( diversos[index].title.toString())),
                            Container(
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      );
                    })

              ]
          ),
          ExpansionTile(
              title: Text(
                'DIVERSOS',style:heading4style,
              )
              ,
              children: <Widget>[

                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: diversos.length,
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
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                                subtitle: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    "\$${ diversos[index].price}",
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
                                              int q = int.parse( diversos[index]
                                                  .quanitity
                                                  .toString());

                                              if (q > 0) {
                                                q--;
                                                diversos[index].quanitity =
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
                                          diversos[index].quanitity!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse( diversos[index]
                                                  .quanitity
                                                  .toString());
                                              q++;
                                              diversos[index].quanitity !=
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
                                title: Text( diversos[index].title.toString())),
                            Container(
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      );
                    })


              ]
          ),
        ],
      ),
    );
  }
}
