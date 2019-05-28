import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_app/beike/page/my_page.dart';
import 'package:rent_app/beike/page/rent_page.dart';
import 'package:rent_app/beike/page/xinyuan_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          "租房",
//          style: TextStyle(color: Colors.black, fontSize: 24),
//        ),
//        leading: Icon(
//          Icons.arrow_back,
//          color: Colors.black,
//        ),
//        centerTitle: true,
//        actions: <Widget>[
//          Padding(
//            padding: EdgeInsets.only(right: 10),
//            child: Icon(
//              Icons.search,
//              color: Colors.black,
//            ),
//          )
//        ],
//        backgroundColor: Colors.white,
//      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          fixedColor: Colors.black,
          onTap: _handerTap,
          items: [
            BottomNavigationBarItem(
              title: Text("租房"),
              icon: getIconWidget("assets/images/icon_zufang.png"),
            ),
            BottomNavigationBarItem(
              title: Text("心愿单"),
              icon: getIconWidget("assets/images/icon_xinyuan.png"),
            ),
            BottomNavigationBarItem(
              title: Text("我的"),
              icon: getIconWidget("assets/images/icon_wode.png"),
            ),
          ]),
    );
  }

  int _currentIndex = 0;
  var _pageList = [RentPage(), XinyuanPage(), MyPage()];

  Widget getIconWidget(String icon) {
    return Image.asset(
      icon,
      width: 28.0,
      height: 28.0,
    );
  }

  _handerTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
