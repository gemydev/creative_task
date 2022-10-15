

class DealsResponse {
  DealsResponse({
    this.title,
    this.pieces,
    this.time,
    this.newPrice,
    this.oldPrice,
  });

  DealsResponse.fromJson(dynamic json) {
    title = json['title'];
    pieces = json['pieces'];
    time = json['time'];
    newPrice = json['new_price'];
    oldPrice = json['old_price'];
  }

  String? title;
  String? pieces;
  String? time;
  String? newPrice;
  String? oldPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['pieces'] = pieces;
    map['time'] = time;
    map['new_price'] = newPrice;
    map['old_price'] = oldPrice;
    return map;
  }
}
