import 'package:flutter/cupertino.dart';
import 'package:rent_app/beike/model/channel_model.dart';
import 'package:rent_app/beike/model/user_model.dart';

class BannerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.asset("assets/images/banner_1.png"),
          Image.asset("assets/images/banner_2.png"),
          Image.asset("assets/images/banner_3.png"),
        ],
      ),
    );
  }
}
