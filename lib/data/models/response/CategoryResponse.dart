class CategoryResponse {
  CategoryResponse({
      this.catName,});

  CategoryResponse.fromJson(dynamic json) {
    catName = json['cat_name'];
  }
  String? catName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cat_name'] = catName;
    return map;
  }

}