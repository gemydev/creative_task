class OfferResponse {
  OfferResponse({
    this.oldPrice,
    this.newPrice,
  });

  OfferResponse.fromJson(dynamic json) {
    oldPrice = json['old_price'];
    newPrice = json['new_price'];
  }

  String? oldPrice;
  String? newPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['old_price'] = oldPrice;
    map['new_price'] = newPrice;
    return map;
  }
}
