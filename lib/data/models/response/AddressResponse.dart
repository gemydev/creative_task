class AddressResponse {
  AddressResponse({
    this.home,
    this.street,
    this.building,
  });

  AddressResponse.fromJson(dynamic json) {
    home = json['home'];
    street = json['street'];
    building = json['building'];
  }

  String? home;
  String? street;
  String? building;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['home'] = home;
    map['street'] = street;
    map['building'] = building;
    return map;
  }
}
