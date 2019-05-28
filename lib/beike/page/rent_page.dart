import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_app/beike/view/ad_view.dart';
import 'package:rent_app/beike/view/banner_view.dart';
import 'package:rent_app/beike/view/channel_view.dart';
import 'package:rent_app/beike/view/houser_view.dart';
import 'package:rent_app/beike/view/user_view.dart';

class RentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RentPageState();
  }
}

class RentPageState extends State<RentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "租房",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10)),
            ChannelView(),
            UserView(),
            BannerView(),
            Padding(padding: EdgeInsets.only(top: 10)),
            AdView(),
            Padding(padding: EdgeInsets.only(top: 20)),
            HouseView(),
          ],
        ),
      ),
        );
  }
}
