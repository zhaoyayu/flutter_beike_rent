import 'package:flutter/cupertino.dart';
import 'package:rent_app/beike/model/channel_model.dart';
import 'package:rent_app/beike/model/user_model.dart';

class AdView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              "assets/images/grid_1.png",
              fit: BoxFit.fitWidth,
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    "assets/images/banner_2.png",
                    fit:BoxFit.fitWidth,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Image.asset(
                    "assets/images/banner_3.png",
                    fit: BoxFit.fitWidth,
                  ),
                  flex: 1,
                )
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
