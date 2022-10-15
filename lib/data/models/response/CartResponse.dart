

class CartResponse {
  CartResponse({
    this.title,
    this.subTitle,
    this.price,
  });

  CartResponse.fromJson(dynamic json) {
    title = json['title'];
    subTitle = json['sub_title'];
    price = json['price'];
  }

  String? title;
  String? subTitle;
  int? price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['sub_title'] = subTitle;
    map['price'] = price;
    return map;
  }
}
