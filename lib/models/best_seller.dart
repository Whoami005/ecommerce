class BestSellerInfo {
  int id;
  bool isFavorites;
  String title;
  int priceWithoutDiscount;
  int discountPrice;
  String picture;

  BestSellerInfo(
      {required this.id,
      required this.isFavorites,
      required this.title,
      required this.priceWithoutDiscount,
      required this.discountPrice,
      required this.picture});

  factory BestSellerInfo.fromJson(Map<String, dynamic> json) {
    return BestSellerInfo(
        id: json['id'],
        isFavorites: json['is_favorites'],
        title: json['title'],
        priceWithoutDiscount: json['price_without_discount'],
        discountPrice: json['discount_price'],
        picture: json['picture']);
  }
}

