import 'package:flutter/cupertino.dart';
import 'package:rent_app/beike/model/channel_model.dart';

class ChannelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return GridView(
//      gridDelegate:
//          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//      children: channelItemBuilder(),
//      shrinkWrap: true,
//    );
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      children: channelItemBuilder(),
    );
  }

  List<Widget> channelItemBuilder() {
    List<Widget> icons = new List();
    for (int i = 0; i < channels.length; i++) {
      icons.add(Column(
        children: <Widget>[
          Image.asset(
            channels[i].imageUrl,
            height: 42.0,
            width: 42.0,
          ),
          Text(
            channels[i].title,
            style: TextStyle(fontSize: 15),
          )
        ],
      ));
    }
    return icons;
  }
}
