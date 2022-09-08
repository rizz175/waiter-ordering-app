import 'package:flutter/material.dart';
import 'package:waiterorder/Model/category.dart';
import 'package:waiterorder/Utll/const.dart';
import 'package:waiterorder/View/mainscreen/pages/Home/Productlist.dart';
import 'package:waiterorder/View/mainscreen/pages/Home/tabs/bebidas.dart';
import 'package:waiterorder/View/mainscreen/pages/Home/tabs/salgados.dart';
import 'package:waiterorder/View/mainscreen/pages/orders/tabs/completedorders.dart';
import 'package:waiterorder/View/mainscreen/pages/orders/tabs/pendingorder.dart';

class orders extends StatefulWidget {
  const orders({Key? key}) : super(key: key);

  @override
  _ordersState createState() => _ordersState();
}

class _ordersState extends State<orders> {
  var customerList = ["asdsa", "asdsad", "sds", "asdsa", "asdsad", "sds"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor:backgroundcolor,
          body: SafeArea(
            child: Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),

              child: Column(
                children: [
                  Container(
                    height:MediaQuery.of(context).size.height*0.35,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0),
                          child: Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text("Orders", style: headingstyle),
                              ),
                            ],
                          ),
                        ),divider,
                        Container(
                          decoration: containerdecoration,
                          width: size.width * 0.9,
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
                        divider,
                        Container(
                          color: Colors.white,
                          child: TabBar(
                              unselectedLabelColor: Colors.black87,
                              labelColor: Colors.orangeAccent,
                              indicatorColor: Colors.orangeAccent,
                              tabs: [
                                Tab(
                                  icon: Icon(Icons.pending_actions),
                                  text: "PENDING",
                                ),
                                Tab(
                                    icon: Icon(Icons.alarm_on_outlined),
                                    text: "COMPLETED"),
                              ]),
                        ),
                        divider,
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                       pendingorders(),
                        completedorders()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )


    );
  }
}
