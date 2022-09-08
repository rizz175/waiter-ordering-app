import 'package:flutter/material.dart';
import 'package:waiterorder/View/mainscreen/pages/Home/home.dart';
import 'package:waiterorder/View/mainscreen/pages/customersdone/customerorders.dart';
import 'package:waiterorder/View/mainscreen/pages/orders/orders.dart';


class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _pageIndex = 0;
  PageController _pageController = PageController(initialPage:0);

  List<Widget> _screens =
  [
    home(),orders()
  ];
  GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();





  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (_pageIndex != 0) {
            _setPage(0);
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          key: _scaffoldKey,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor:Colors.orange,
            unselectedItemColor:Colors.black54,
            showUnselectedLabels: true,
            currentIndex: _pageIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              _barItem(Icons.home,"Home", 0),
              _barItem(Icons.list_alt,"Orders", 1),


            ],
            onTap: (int index) {
              _setPage(index);
            },
          ),

          body: PageView.builder(
            controller: _pageController,
            itemCount: _screens.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _screens[index];
            },
          ),

        ));
  }
  BottomNavigationBarItem _barItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Stack(
        clipBehavior: Clip.none, children: [
        Icon(icon, color: index == _pageIndex ? Colors.orange : Colors.black54, size: 25),
      ],
      ),
      label: label,
    );
  }
  void _setPage(int pageIndex) {
    setState(() {
      _pageController.jumpToPage(pageIndex);
      _pageIndex = pageIndex;
    });
  }
}
