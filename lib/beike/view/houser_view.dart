import 'package:flutter/cupertino.dart';
import 'package:rent_app/beike/model/channel_model.dart';
import 'package:rent_app/beike/model/house_model.dart';
import 'package:rent_app/beike/model/user_model.dart';

class HouseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "全部房源",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
        ListView.builder(
          itemBuilder: _itemBuilder,
          itemCount: hoseList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
        )
//        ListView(
//          children: houseItemBuilder(),
//          shrinkWrap: true,
//          physics: NeverScrollableScrollPhysics(),
//        )
      ],
    );
  }

  Widget _itemBuilder(BuildContext context, int i) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            hoseList[i].imageUrl,
            height: 90.0,
            width: 120.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  hoseList[i].title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Text(
                  hoseList[i].desc,
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  hoseList[i].add,
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  hoseList[i].price + "元/月",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffff0000),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> houseItemBuilder() {
    List<Widget> itemWidget = new List();
    for (int i = 0; i < hoseList.length; i++) {
      itemWidget.add(Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              hoseList[i].imageUrl,
              height: 90.0,
              width: 120.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    hoseList[i].title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    hoseList[i].desc,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    hoseList[i].add,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    hoseList[i].price + "元/月",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffff0000),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
      ));
    }
    return itemWidget;
  }
}
