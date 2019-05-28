import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_app/beike/model/channel_model.dart';
import 'package:rent_app/beike/model/user_model.dart';

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "租房专家",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "为你推荐西二旗周边的租房专家",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "编辑位置",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        Container(
          height: 130,
          child: ListView.builder(
            itemBuilder: buildItem,
            scrollDirection: Axis.horizontal,
//            shrinkWrap: true,
            itemCount: userList.length,
          ),
//          child: ListView(
//            shrinkWrap: true,
//            scrollDirection: Axis.horizontal,
//            children: userItemBuilder(),
//          ),
        ),
      ],
    );
  }

  Widget buildItem(BuildContext context, int i) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Image.asset(
              userList[i].imageUrl,
              height: 60.0,
              width: 60.0,
            ),
            Text(
              userList[i].name,
              style: TextStyle(fontSize: 15),
            ),
            Text(
              userList[i].grade,
              style: TextStyle(fontSize: 12),
            )
          ],
        ));
  }

  List<Widget> userItemBuilder() {
    List<Widget> icons = new List();
    for (int i = 0; i < userList.length; i++) {
      icons.add(
        Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Image.asset(
                  userList[i].imageUrl,
                  height: 60.0,
                  width: 60.0,
                ),
                Text(
                  userList[i].name,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  userList[i].grade,
                  style: TextStyle(fontSize: 12),
                )
              ],
            )),
      );
    }
    return icons;
  }
}
