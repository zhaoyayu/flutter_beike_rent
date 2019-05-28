import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class XinyuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _style = TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700);
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffffffff),
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  Text(
                    "心愿单",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ],
              ),
              bottom: TabBar(
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 5.0,
                tabs: <Widget>[
                  Tab(
                    child: Text("关注", style: _style,),
                  ),
                  Tab(
                    child: Text("最近联系", style: _style,),
                  ),
                  Tab(
                    child: Text("拼租", style: _style,),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: Text("关注"),
                ),
                Center(
                  child: Text("最近联系"),
                ),
                Center(
                  child: Text("拼租"),
                ),
              ],
            )));
  }
}
