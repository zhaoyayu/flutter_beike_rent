class HomeChannel {
  String imageUrl;
  String title;

  HomeChannel(
    this.title,
    this.imageUrl,
  );
}

final List<HomeChannel> channels = [
  HomeChannel("整租", "assets/images/icon_zhengzu.png"),
  HomeChannel("合租", "assets/images/icon_hezu.png"),
  HomeChannel("独栋公寓", "assets/images/icon_gongyu.png"),
  HomeChannel("找室友", "assets/images/icon_shiyou.png"),
  HomeChannel("月租", "assets/images/icon_yuezu.png"),
  HomeChannel("地图找房", "assets/images/icon_ditu.png"),
  HomeChannel("我要出租", "assets/images/icon_chuzu.png"),
  HomeChannel("搬家", "assets/images/icon_banjia.png"),
];
