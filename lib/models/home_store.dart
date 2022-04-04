class HomeStoreInfo {
  int id;
  bool? isNew;
  String title;
  String subtitle;
  String picture;
  bool isBuy;

  HomeStoreInfo({
    required this.id,
    this.isNew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isBuy,
  });

  factory HomeStoreInfo.fromJson(Map<String, dynamic> json) {
    return HomeStoreInfo(
        id: json["id"],
        isNew: json["is_new"] ?? false,
        title: json["title"],
        subtitle: json["subtitle"],
        picture: json["picture"],
        isBuy: json["is_buy"]);
  }
}
