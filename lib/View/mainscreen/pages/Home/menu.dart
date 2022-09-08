import 'package:flutter/material.dart';
import 'package:waiterorder/Model/category.dart';
import 'package:waiterorder/Utll/const.dart';
import 'package:waiterorder/View/mainscreen/pages/Home/Productlist.dart';
import 'package:waiterorder/View/mainscreen/pages/Home/tabs/bebidas.dart';
import 'package:waiterorder/View/mainscreen/pages/Home/tabs/salgados.dart';

class Menuscreen extends StatefulWidget {
  const Menuscreen({Key? key}) : super(key: key);

  @override
  _MenuscreenState createState() => _MenuscreenState();
}

class _MenuscreenState extends State<Menuscreen> {
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
                                            vertical: 5.0, horizontal: 0),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Icon(
                                                Icons.arrow_back,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("Menu", style: headingstyle),
                                            ),
                                          ],
                                        ),
                                      ),
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
                                              hintText: "Search Products"),
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
                                                icon: Icon(Icons.fastfood),
                                                text: "SALGADOS",
                                              ),
                                              Tab(
                                                  icon: Icon(Icons.local_drink),
                                                  text: "BEBIDAS"),
                                            ]),
                                      ),
                                      divider,
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                       salgados(),
                       bebidas()
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
