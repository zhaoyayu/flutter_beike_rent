class UserModel {
  String imageUrl;
  String name;
  String grade;
  String desc;

  UserModel(this.name, this.imageUrl, this.grade, this.desc);
}

final List<UserModel> userList = [
  UserModel("赵敏", "assets/images/user1.jpeg", "金牌经纪人", "服务11用户"),
  UserModel("周芷若", "assets/images/user2.jpeg", "优质经纪人", "服务8用户"),
  UserModel("丁敏君", "assets/images/user3.jpeg", "金牌经纪人", "服务11用户"),
  UserModel("殷离", "assets/images/user4.jpeg", "优质经纪人", "服务5用户"),
  UserModel("小昭", "assets/images/user5.jpeg", "金牌经纪人", "服务14用户"),
  UserModel("小龙女", "assets/images/user6.jpeg", "优质经纪人", "服务10用户"),
  UserModel("王语嫣", "assets/images/user7.jpeg", "金牌经纪人", "服务9用户"),
];
