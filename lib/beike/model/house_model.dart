class HomeModel {
  String imageUrl;
  String title;
  String desc;
  String add;
  String price;

  HomeModel(this.title, this.imageUrl, this.desc, this.add, this.price);
}

final List<HomeModel> hoseList = [
  HomeModel("整租·远见名苑 1室0厅 东", "assets/images/img1.jpg", "157㎡ /东 / 2室1厅2卫",
      "朝阳-东大桥-圣世一品", "17000"),
  HomeModel("合租·远洋山水 4居室 南卧", "assets/images/img2.jpg", "15㎡ /南 / 4居室",
      "石景山-鲁谷-远洋山水", "4060"),
  HomeModel("整租·宝丰大厦 3室1厅 西北", "assets/images/img3.jpg", "102㎡ /西北 / 3室1厅1卫",
      "丰台-玉泉营-宝丰大厦 ", "5500"),
  HomeModel("整租·苏荷时代 1室1厅 西", "assets/images/img4.jpg", "78㎡ /西 / 1室1厅1卫",
      "通州-果园-苏荷时代 ", "4200"),
  HomeModel("合租·澳洲康都 4居室 西卧", "assets/images/img5.jpg", "20㎡ /西 / 4居室",
      "朝阳-望京-澳洲康都", "5130"),
  HomeModel("整租·朗家胡同 2室1厅 南/北", "assets/images/img6.jpg",
      " 53㎡ /南 北 / 2室1厅1卫", "东城-安定门-朗家胡同", "6900"),
  HomeModel("整租·远见名苑 1室0厅 东", "assets/images/img7.jpg", "47㎡ /东 / 1室0厅1卫",
      "西城-广安门-远见名苑 ", "5300"),
];
